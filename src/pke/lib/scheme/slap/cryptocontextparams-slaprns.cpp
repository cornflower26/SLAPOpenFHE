#define PROFILE

#include "cryptocontext.h"
#include "scheme/slaprns/cryptocontextparams-slaprns.h"
#include "globals.h"

namespace lbcrypto {

void CCParams<CryptoContextSLAPRNS>::calculateParms(){
    unsigned int del_interval = packingSize ? packingSize : log2(plainBits);
    scale = del_interval / epsilon;
    gamma = log(1/delta);
    gamma /= N;

    //Directly from the paper
    if(b == 0.0f){
        static const unsigned int B_SCALE = 10;
        b = (long double) 1/gamma;
        b /= N;
        long double tmp = log(1/delta);
        //b *= tmp;
        unsigned int b_int = B_SCALE*b;
        unsigned int tmp_int = B_SCALE*tmp;
        tmp_int *= b_int;
        b = ((long double)tmp_int)/(B_SCALE*B_SCALE);
    }

    a = 1/gamma;
    //assert(isfinite(a));
    a *= log(1/delta);
    //assert(isfinite(a));
    a *= log(2/b);
    //assert(isfinite(a));
    a = sqrt(a);
    //assert(isfinite(a));
    a *= (4*del_interval)/(long double)epsilon;
    //assert(isfinite(a));
}

}  // namespace lbcrypto
