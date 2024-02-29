//
// Created by Antonia Januszewicz on 1/24/24.
//
#define PROFILE

#include "openfhe.h"

using namespace lbcrypto;

int main() {
    unsigned int plain_bits = 9;
    unsigned int packing_size = 1;
    unsigned int num_users = 1;
    unsigned int iters = 1;
    unsigned int k_prime = 1;
    SLAPScheme scheme = NS;

    CCParams<CryptoContextSLAPRNS> parameters;
    parameters.setPlainBits(plain_bits);
    parameters.setPackingSize(packing_size);
    parameters.setNumUsers(num_users);
    parameters.setIters(iters);
    parameters.setKPrime(k_prime);
    parameters.setScheme1(scheme);

    parameters.setScale(0.5f);
    parameters.setEpsilon(1.0f);
    parameters.setDelta(0.1f);
    parameters.setMaxCtexts(20);

    parameters.calculateParms();

    CryptoContext< DCRTPoly> cc = GenCryptoContext(parameters);
    // Enable the features that you wish to use
    cc->Enable(PKE);
    cc->Enable(KEYSWITCH);
    cc->Enable(LEVELEDSHE);

    auto keys = cc->KeyGen();

    // Inputs
    std::vector<double> x1 = {0.25, 0.5, 0.75, 1.0, 2.0, 3.0, 4.0, 5.0};
    std::vector<double> x2 = {5.0, 4.0, 3.0, 2.0, 1.0, 0.75, 0.5, 0.25};

    // Encoding as plaintexts
    Plaintext ptxt1 = cc->MakeCKKSPackedPlaintext(x1);
    Plaintext ptxt2 = cc->MakeCKKSPackedPlaintext(x2);

    std::cout << "Input x1: " << ptxt1 << std::endl;
    std::cout << "Input x2: " << ptxt2 << std::endl;

    // Encrypt the encoded vectors
    auto c1 = cc->Encrypt(keys.publicKey, keys.secretKey, ptxt1);
    auto c2 = cc->Encrypt(keys.publicKey, keys.secretKey, ptxt2);

    cc->EvalAddInPlace(c1,c2);

    Plaintext result;
    // We set the cout precision to 8 decimal digits for a nicer output.
    // If you want to see the error/noise introduced by CKKS, bump it up
    // to 15 and it should become visible.
    std::cout.precision(15);

    std::cout << std::endl << "Results of homomorphic computations: " << std::endl;

    cc->Decrypt( c1, keys.secretKey, keys.publicKey, &result);
    std::cout << "x1 = " << result;
    std::cout << "Estimated precision in bits: " << result->GetLogPrecision() << std::endl;

    return 0;

}