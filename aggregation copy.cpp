
// g++ ./aggregation.cpp -pthread -lntl -lgmp -lgmpxx -std=c++14 -Wall -Werror -O3 -o slap

#include <iostream>
#include <vector>
#include <getopt.h>
#include <cstdint>
#include <getopt.h>
#include <sstream>
#include <cmath>
#include <chrono>
#include <string>

#include <NTL/ZZ.h>
#include <NTL/ZZX.h>

#include "Aggregator_NTL.h"
#include "Aggregator_RNS.h"

using namespace std;
using namespace std::chrono;
using namespace NTL;

static const float SCALE_DEFAULT = 0.5f;
static const Scheme SCHEME_DEFAULT = NS;
static const unsigned int MAX_CTEXTS_DEFAULT = 20;
static const float EPSILON_DEFAULT = 1.0f;
static const float DELTA_DEFAULT = 0.1f;

//These two are functions to do batched plain aggregation using NTL or Polynomial backends
void ntl_plain(const unsigned int plain_bits, const unsigned int num_users, const unsigned int N, 
             const unsigned int iters, vector<double> & add_times){
  ZZX result;
  ZZX tmp;
  ZZ t;
  t = 1;
  t <<= plain_bits;
  high_resolution_clock::time_point start, end;
  for(unsigned int i = 0; i < iters; i++){
    double count = 0.0f;
    for(unsigned int j = 0; j < num_users; j++){
      //Get random ciphertext
      tmp = uniform(t, N);
      start = high_resolution_clock::now();
      add_inplace(result, tmp, t);
      end = high_resolution_clock::now();
      count += duration_cast<chrono::nanoseconds>(end-start).count();
    }
    add_times.push_back(count);
  }
  return;
}

void rns_plain(const unsigned int plain_bits, const unsigned int num_users, const unsigned int N, 
             const unsigned int iters, vector<double> & add_times){
  unsigned int num_moduli = plain_bits / 63;
  if(plain_bits % 63){
    num_moduli++;
  }
  unsigned int modsize = plain_bits / num_moduli;
  vector<uint64_t> prs = primes_unoptimized(num_moduli, modsize);
  Parameters p(N, prs, false);
  std::cout << "#Plain: N " << p.poly_mod_degree() << " k " << p.moduli_count() << '\n';
  DiscreteLaplacian dl;
  high_resolution_clock::time_point start, end;
  Polynomial poly(&p);
  Polynomial result(&p);
  result.zero();
  for(unsigned int i = 0; i < iters; i++){
    double count = 0.0f;
    for(unsigned int j = 0; j < num_users; j++){
      //Get random ciphertext
      poly.uniform(dl);
      start = high_resolution_clock::now();
      result += poly;
      end = high_resolution_clock::now();
      count += duration_cast<chrono::nanoseconds>(end-start).count();
    }
    add_times.push_back(count);
  }
  return;
}

//For NTL int, in case of more than 128 bits
//Only gets lower bytes
/*
inline uint64_t to_uint(const ZZ & x){
  uint64_t ret;
  BytesFromZZ((unsigned char *) &ret, x, sizeof(uint64_t));
  return ret;
}
*/

//Generic
inline uint32_t to_uint(const uint32_t & x){
  return x;
}

inline uint64_t to_uint(const uint64_t & x){
  return x;
}
inline uint16_t to_uint(const uint16_t & x){
  return x;
}

inline uint128_t to_uint(const uint128_t & x){
  return x;
}

//Argue random modulus
void plain_agg_16(const uint16_t modulus, const unsigned int num_users, 
                 const unsigned int N, const unsigned int k_prime, const unsigned int iters, 
                 vector<double> & add_times){
  DiscreteLaplacian dl;
  add_times.clear();
  high_resolution_clock::time_point start, end;
  uint32_t * results = (uint32_t *) calloc(N*k_prime, sizeof(uint32_t));
  uint16_t * args = (uint16_t *) malloc(N*k_prime*num_users*sizeof(uint16_t));
  for(unsigned int it_idx = 0; it_idx < iters; it_idx++){
    double time_count = 0.0f;
    //First, get some data
    for(unsigned int i = 0; i < N*k_prime*num_users; i++){
      args[i] = (uint16_t) dl.uniform_64((uint64_t) modulus);
    }
    //Now, do the computation
    uint16_t * arg_ptr = args;
    uint32_t * res_ptr = results;
    start = high_resolution_clock::now();
    
    for(unsigned int slot_idx = 0; slot_idx < N; slot_idx++){
      for(unsigned int comp_idx = 0; comp_idx < k_prime; comp_idx++){
        for(unsigned int user_idx = 0; user_idx < num_users; user_idx++){
          *res_ptr += *arg_ptr;
          *res_ptr %= modulus;
          arg_ptr++;
        }
        res_ptr++;
      }
    }
    
    end = high_resolution_clock::now();
    time_count = duration_cast<chrono::nanoseconds>(end-start).count();
    add_times.push_back(time_count);
  }
  free(results);
  results = NULL;
  free(args);
  args = NULL;
}
                 
                 
                 
                 
                 
template <typename T>
void plain_agg(const T modulus, const unsigned int num_users, 
               const unsigned int N, const unsigned int k_prime, const unsigned int iters, 
               vector<double> & add_times){
  DiscreteLaplacian dl;
  add_times.clear();
  high_resolution_clock::time_point start, end;
  unsigned int total_values = N; //Previously N*k
  T * data = (T *) malloc(num_users*sizeof(T));
  vector<T> results(k_prime);
  vector<T> moduli;
  //auto approx_mod = modulus / k_prime;
  T basic_modulus = modulus/k_prime; //Close enough
  for(unsigned int i = 0; i < k_prime; i++){
    moduli.push_back(basic_modulus);
    basic_modulus++;
  }
  cout << "iter_vals_count " << total_values << endl;
  auto rand_mod = to_uint(modulus);
  data[0] = 1;
  for(unsigned int it = 0; it < iters; it++){
    T sum;
    sum = 0;
    double time_count = 0.0f;
    for(unsigned int i = 1; i < num_users; i++){
      //Force new random data to prevent a really smart compiler from caching the result;
      data[i] = (T) dl.uniform_64((uint64_t) rand_mod);
    }
    start = high_resolution_clock::now();
    for(unsigned int j = 0; j < total_values; j++){
      for(unsigned int i = 0; i < num_users; i++){
        sum += data[i];
        sum %= modulus;
      }
      //Hopefully writing to a vector will prevent optimization
      for(unsigned int k = 0; k < k_prime; k++){
        results[k] = sum % moduli[k];
      }
      //This should prevent optimizing out sum
      data[0] = sum;
      sum = 0;
    }
    
    
    end = high_resolution_clock::now();
    time_count = duration_cast<chrono::nanoseconds>(end-start).count();
    
    add_times.push_back(time_count);
    
    /*
    for(unsigned int batch_idx = 0; batch_idx < N; batch_idx++){
      uint64_t sum = 0;
      double time_count = 0.0f;
      
      for(unsigned int i = 0; i < num_users; i++){
        data[i] = dl.uniform_64(modulus);
      }
      start = high_resolution_clock::now();
      for(unsigned int i = 0; i < num_users; i++){        
        sum += data[i];
      }
      end = high_resolution_clock::now();
      time_count = duration_cast<chrono::nanoseconds>(end-start).count();
      
      add_times.push_back(time_count);
    }
    */
  }
  free(data);
  data = NULL;
  return;
}

//Argue actually N*k'
void plain_main(const unsigned int plain_bits, const unsigned int num_users, unsigned int N, unsigned int k_prime, 
               unsigned int iters, bool ntl=false){
  vector<double> add_times;
  DiscreteLaplacian dl;
  assert(plain_bits <= 16);
  uint16_t m = dl.uniform_64((uint64_t) UINT16_MAX);
  plain_agg_16(m, num_users, N, k_prime, iters, add_times);
  
  /*
  
  cout << "#Plain agg. with " << plain_bits << " bits" << endl;
  if(plain_bits <= 16){
    uint16_t m = UINT16_MAX;
    plain_agg(m, num_users, N, k_prime, iters, add_times);
  }
  else if (plain_bits <= 32){
    uint32_t m = UINT32_MAX;
    plain_agg(m, num_users, N, k_prime, iters, add_times);
  }
  else if(plain_bits <= 64){
    uint64_t m = UINT64_MAX;
    plain_agg(m, num_users, N, k_prime, iters, add_times);
  }
  else if(plain_bits <= 128){
    uint128_t m = 1;
    unsigned int shift_amt = std::min(plain_bits, (unsigned int) 127);
    m <<= shift_amt;
    plain_agg(m, num_users, N, k_prime, iters, add_times);
  }
  else{
    ZZ m;
    m = 1;
    m <<= plain_bits;
    m--;
    plain_agg(m, num_users, N, k_prime, iters, add_times);
  }
  
  */
  
  std::string category = "plain_agg";
  for(const double & d : add_times){
    std::cout << category << ' ' << d << '\n';
  }
  
  

  return;
}




size_t rns_main(const unsigned int plain_bits, const unsigned int num_users, const float scale, 
             const Scheme sc, unsigned int iters, const unsigned int max_num_ctexts,
             const long double beta, 
             unsigned int packed_size=0, 
             const bool noise=true){

  std::ostringstream os;

  Aggregator_RNS agg(plain_bits, scale, num_users, sc, packed_size, beta);
  auto agg_parms = agg.parms_ptrs();
  Polynomial agg_key(agg_parms.first);
  size_t ret = agg_key.poly_mod_degree();
  cout << "#Agg.: N " << agg_key.poly_mod_degree() << " k " << agg_key.mod_count() << endl;
  Polynomial pl(agg_parms.second);
  cout << "#Plain space: k' " << pl.mod_count() << endl;
#ifdef DEBUG
  assert(agg_key.buffer() != NULL);
#endif  
  vector<Polynomial> ctexts;

  vector<double> noise_times;
  vector<double> enc_times;
  vector<double> dec_times;
  uint64_t ts = 0xDEADBEEF;
  Polynomial pk = agg.public_key(ts);
#ifdef DEBUG
  assert(pk.parameters() == agg_key.parameters());
  assert(pk.parameters()->mult_enabled());
#endif  

  test_enc(ctexts, agg, pk, agg_key, noise, max_num_ctexts, 
            noise_times, enc_times);

  Polynomial res(agg_parms.first);
  for(unsigned int i = 0; i < iters; i++){
    double dec_time;
    res = agg.dec(agg_key, ctexts, ts, dec_time, num_users);
    dec_times.push_back(dec_time);
  }
  assert(noise_times.size() == enc_times.size());
  for(unsigned int i = 0; i < iters; i++){
    double total_time = noise_times[i] + enc_times[i];
    os << "rns_enc_overall: " << total_time << '\n';
  }

  for(const double & d : dec_times){
    os << "rns_dec: " << d << '\n';
  }

  std::cout << os.str();

  return ret;
}

size_t poly_main(const unsigned int plain_bits, const unsigned int num_users, const float scale,
                const Scheme sc, unsigned int iters, const unsigned int max_num_ctexts,
                const long double beta,
                unsigned int packed_size=0,
                const bool noise=true){

    std::ostringstream os;

    Aggregator_RNS agg(plain_bits, scale, num_users, sc, packed_size, beta);
    auto agg_parms = agg.parms_ptrs();
    Polynomial agg_key(agg_parms.first);
    size_t ret = agg_key.poly_mod_degree();
    cout << "#Agg.: N " << agg_key.poly_mod_degree() << " k " << agg_key.mod_count() << endl;
    Polynomial pl(agg_parms.second);
    cout << "#Plain space: k' " << pl.mod_count() << endl;
#ifdef DEBUG
    assert(agg_key.buffer() != NULL);
#endif
    vector<Polynomial> ctexts;

    vector<double> noise_times;
    vector<double> enc_times;
    vector<double> dec_times;
    uint64_t ts = 0xDEADBEEF;
    Polynomial pk = agg.public_key(ts);
#ifdef DEBUG
    assert(pk.parameters() == agg_key.parameters());
  assert(pk.parameters()->mult_enabled());
#endif

    test_poly_enc(ctexts, agg, pk, agg_key, noise, max_num_ctexts,
             noise_times, enc_times);

    vector<COMPL_FLOAT> res;
    vector<COMPL_FLOAT> mult_res;
    for(unsigned int i = 0; i < iters; i++){
        double dec_time;
        res = agg.poly_dec(agg_key, ctexts, ts, dec_time, num_users);
        if (i == 0) for (int j = 0; j < mult_res.size(); j++) mult_res.at(j) *= res.at(j);
        else mult_res = res;
        //os << res << '\n';
        dec_times.push_back(dec_time);
    }
    for (int i = 0; i < mult_res.size(); i++) os << mult_res.at(i) << '\n';
    assert(noise_times.size() == enc_times.size());
    for(unsigned int i = 0; i < iters; i++){
        double total_time = noise_times[i] + enc_times[i];
        os << "rns_enc_overall: " << total_time << '\n';
    }

    for(const double & d : dec_times){
        os << "rns_dec: " << d << '\n';
    }

    std::cout << os.str();

    return ret;
}

int ntl_main(const unsigned int plain_bits, const unsigned int num_users, const float scale, 
  const Scheme sc, const unsigned int iters, const unsigned int max_num_ctexts,
  const long double beta, const bool noise=true){
  //TODO args and parsing - hardcoding stuff for now to get it to compile
  ZZ t;
  t = 1;
  t <<= plain_bits;

  std::ostringstream os;

  Aggregator_NTL agg(t, scale, num_users, sc, beta);

  ZZX agg_key;
  vector<ZZX> ctexts;
  vector<double> noise_times;
  vector<double> enc_times;
  vector<double> dec_times;
  uint64_t ts = 0xDEADBEEF;
  ZZX pk = agg.public_key(ts);
  test_enc(ctexts, agg, pk, agg_key, noise, max_num_ctexts, 
            noise_times, enc_times);

  ZZX res;
  for(unsigned int i = 0; i < iters; i++){
    double dec_time;
    res = agg.dec(agg_key, ctexts, pk, num_users, dec_time);
    dec_times.push_back(dec_time);
  }
  assert(noise_times.size() == enc_times.size());
  for(unsigned int i = 0; i < iters; i++){
    double total_time = noise_times[i] + enc_times[i];
    os << "ntl_enc_overall: " << total_time << '\n';
  }

  for(const double & d : dec_times){
    os << "ntl_dec: " << d << '\n';
  }

  std::cout << os.str();

  return 0;
}


int main(int argc, char ** argv){

  //Set NTL seed
  const static uint64_t seed = 0xDEADBEEF;
  NTL::SetSeed((const unsigned char *) &seed, sizeof(seed));

  unsigned int plain_bits = 0;
  unsigned int packing_size = 0; //Packing not implemented for NTL
  unsigned int num_users = 0;
  unsigned int iters = 0;
  bool do_RNS = false;
  bool do_NTL = false;
  bool do_plain = false;
  bool do_poly = false;
  long double scale = SCALE_DEFAULT;
  Scheme sc = SCHEME_DEFAULT;
  unsigned int max_ctexts = MAX_CTEXTS_DEFAULT;
  unsigned int k_prime = 1;
  size_t N = 0;

  int c;
  while((c = getopt(argc, argv, "t:w:n:i:rgpos:c:k:N:")) != -1){
    switch(c){
      case 't':{
        plain_bits = atoi(optarg);
        break;
      }
      case 'w':{
        packing_size = atoi(optarg);
        break;
      }
      case 'n':{
        num_users = atoi(optarg);
        break;
      }
      case 'i':{
        iters = atoi(optarg);
        break;
      }
      case 'r':{
        do_RNS = true;
        break;
      }
      case 'g':{
        do_NTL = true;
        break;
      }
      case 'p':{
        do_plain = true;
        break;
      }
      case 'o':{
          do_poly = true;
          break;
      }
      case 's':{
        scale = atof(optarg);
        break;
      }
      case 'c':{
        //Need to revise this if more schemes are added
        if(!strcmp(optarg, "NS")){
          sc = NS;
        }
        else{
          sc = MS;
        }
        break;
      }
      case 'k':{
        k_prime = atoi(optarg);
        assert(k_prime >= 1);
        break;
      }
      case 'N':{
        N = atoi(optarg);
        assert(N >= 1);
      }
    }
  }
  //Check args
  assert(plain_bits);
  if(packing_size){
    assert(packing_size <= plain_bits);
  }
  assert(num_users);
  assert(iters);
  assert(do_RNS || do_NTL || do_plain || do_poly);

  packing_size = plain_size_needed(packing_size, num_users);

  unsigned int log_q = ctext_modulus_size(plain_bits, num_users, sc);
  cout << "# |q| " << log_q << " |t| " << plain_bits << " users " << num_users << (sc == NS ? " Noise-Scaled" : " Message-Scaled") << endl;

  long double epsilon = EPSILON_DEFAULT;
  long double delta = DELTA_DEFAULT;
  long double gamma = 0.0;
  long double a = 0.0f;
  long double b = 0.0f;
  unsigned int del_interval = packing_size ? packing_size : log2(plain_bits);
  if(do_NTL || do_RNS){
    calculate_parms(epsilon, delta, del_interval, num_users, gamma, scale, a, b);
  }

  //size_t N = 1024;

  if(do_RNS){
    size_t tmp = rns_main(plain_bits, num_users, scale, sc, iters, max_ctexts, packing_size, b);
    if(!N){
      N = tmp;
    }
  }
  else{
    if(!N){
      N = 1;
    }
  }

  if(do_plain){
    plain_main(plain_bits, num_users, N, k_prime, iters);
  }
  
  if(do_NTL){
    ntl_main(plain_bits, num_users, scale, sc, iters, max_ctexts, b);
  }

  if (do_poly){
      size_t tmp = poly_main(plain_bits, num_users, scale, sc, iters, max_ctexts, packing_size, b);
      if(!N){
          N = tmp;
      }
  }
  else{
      if(!N){
          N = 1;
      }
  }

  
  return 0;
}
