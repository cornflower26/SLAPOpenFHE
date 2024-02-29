//
// Created by Antonia Januszewicz on 1/24/24.
//

#ifndef LBCRYPTO_CRYPTO_SLAPRNS_PARAMETERGENERATION_H
#define LBCRYPTO_CRYPTO_SLAPRNS_PARAMETERGENERATION_H

#include "schemerns/rns-parametergeneration.h"

#include <string>
#include <memory>

/**
 * @namespace lbcrypto
 * The namespace of lbcrypto
 */
namespace lbcrypto {

class ParameterGenerationSLAPRNS : public ParameterGenerationRNS {
public:
    virtual ~ParameterGenerationSLAPRNS() {}

    bool ParamsGenSLAPRNS(std::shared_ptr<CryptoParametersBase<DCRTPoly>> cryptoParams, usint plainBits, usint packingSize,
                          usint numUsers, usint setIters, usint kPrime, SLAPScheme scheme1) const override;

    /////////////////////////////////////
    // SERIALIZATION
    /////////////////////////////////////

    template <class Archive>
    void save(Archive& ar, std::uint32_t const version) const {}

    template <class Archive>
    void load(Archive& ar, std::uint32_t const version) {}

    std::string SerializedObjectName() const {
        return "ParameterGenerationSLAPRNS";
    }
};

}  // namespace lbcrypto
#endif  //OPENFHE_SLAPRNS_PARAMETERGENERATION_H
