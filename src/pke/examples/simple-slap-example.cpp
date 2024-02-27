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
    parameters.setScheme1(NS);

    parameters.calculateParms();


    CryptoContext<DCRTPoly> cc = GenCryptoContext(parameters);

    // Enable the features that you wish to use
    cc->Enable(PKE);


}