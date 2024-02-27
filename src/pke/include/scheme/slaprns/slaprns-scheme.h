//
// Created by Antonia Januszewicz on 1/24/24.
//

#ifndef OPENFHE_SLAPRNS_SCHEME_H
#define OPENFHE_SLAPRNS_SCHEME_H

#include "schemerns/rns-scheme.h"

#include "scheme/slaprns/slaprns-cryptoparameters.h"
#include "scheme/slaprns/slaprns-parametergeneration.h"
#include "scheme/slaprns/slaprns-pke.h"

#include <string>
#include <memory>

/**
 * @namespace lbcrypto
 * The namespace of lbcrypto
 */
namespace lbcrypto {

class SchemeSLAPRNS : public SchemeRNS {
public:
    SchemeSLAPRNS() {
        this->m_ParamsGen = std::make_shared<ParameterGenerationSLAPRNS>();
    }

    virtual ~SchemeSLAPRNS() {}

    bool operator==(const SchemeBase<DCRTPoly>& sch) const override {
        return dynamic_cast<const SchemeSLAPRNS*>(&sch) != nullptr;
    }

    void Enable(PKESchemeFeature feature) override {};

    /////////////////////////////////////
    // SERIALIZATION
    /////////////////////////////////////

    template <class Archive>
    void save(Archive& ar, std::uint32_t const version) const {
        ar(cereal::base_class<SchemeRNS>(this));
    }

    template <class Archive>
    void load(Archive& ar, std::uint32_t const version) {
        ar(cereal::base_class<SchemeRNS>(this));
    }

    std::string SerializedObjectName() const override {
        return "SchemeSLAPRNS";
    }
};

}  // namespace lbcrypto

#endif  //OPENFHE_SLAPRNS_SCHEME_H
