//
// Created by Antonia Januszewicz on 2/15/24.
//

#define PROFILE

#include "cryptocontext.h"
#include "scheme/slaprns/slaprns-cryptoparameters.h"
#include "scheme/slaprns/slaprns-parametergeneration.h"

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

}
