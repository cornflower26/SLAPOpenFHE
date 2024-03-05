//
// Created by Antonia Januszewicz on 2/15/24.
//

#define PROFILE

#include "cryptocontext.h"
#include "scheme/slaprns/slaprns-cryptoparameters.h"
#include "scheme/slaprns/slaprns-parametergeneration.h"
#define LOG2_3 2

namespace lbcrypto {

bool ParameterGenerationSLAPRNS::ParamsGenSLAPRNS(std::shared_ptr<CryptoParametersBase<DCRTPoly>> cryptoParams, usint plainBits, usint packingSize,
                                                  usint numUsers, usint setIters, usint kPrime, SLAPScheme scheme1) const {
    const auto cryptoParamsSLAPRNS = std::dynamic_pointer_cast<CryptoParametersSLAPRNS>(cryptoParams);
    cryptoParamsSLAPRNS->setScheme1(scheme1);
    cryptoParamsSLAPRNS->setKPrime(kPrime);
    cryptoParamsSLAPRNS->setIters(setIters);
    cryptoParamsSLAPRNS->setNumUsers(numUsers);
    cryptoParamsSLAPRNS->setPackingSize(packingSize);
    cryptoParamsSLAPRNS->setBeta(packingSize);
    cryptoParamsSLAPRNS->setB(plainBits);
    cryptoParamsSLAPRNS->setPlainBits(plainBits);

    return true;
}

uint32_t ParameterGenerationSLAPRNS::ctext_modulus_size(const uint32_t log_t, const size_t num_users, const SLAPScheme s){
    unsigned int log_num_users = NTL::NumBits(num_users);
    if(NTL::weight(num_users) != 1){
        log_num_users++;
    }
    unsigned int q_bitsize;
    if(s == NS){
        q_bitsize = (log_t+1) + log_num_users + LOG2_3;
    }
    else{
        q_bitsize = 2*(log_t+1) + log_num_users + LOG2_3;
    }
    return q_bitsize;
}

}
