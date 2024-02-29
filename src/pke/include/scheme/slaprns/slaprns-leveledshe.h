//
// Created by Antonia Januszewicz on 2/28/24.
//

#ifndef LBCRYPTO_CRYPTO_SLAPRNS_LEVELEDSHE_H
#define LBCRYPTO_CRYPTO_SLAPRNS_LEVELEDSHE_H

    #include "schemerns/rns-leveledshe.h"

    #include <memory>
    #include <string>
    #include <map>
    #include <vector>

/**
 * @namespace lbcrypto
 * The namespace of lbcrypto
 */
namespace lbcrypto {

class LeveledSHESLAPRNS : public LeveledSHERNS {
public:
    virtual ~LeveledSHESLAPRNS() {}

    /////////////////////////////////////////
    // SHE ADDITION
    /////////////////////////////////////////

    using LeveledSHERNS::EvalAdd;
    using LeveledSHERNS::EvalAddInPlace;

    /////////////////////////////////////////
    // SHE ADDITION PLAINTEXT
    /////////////////////////////////////////

    /////////////////////////////////////////
    // SHE ADDITION CONSTANT
    /////////////////////////////////////////

    Ciphertext<DCRTPoly> EvalAdd(ConstCiphertext<DCRTPoly> ciphertext1,
                                 ConstCiphertext<DCRTPoly> ciphertext2) const override;

    void EvalAddInPlace(Ciphertext<DCRTPoly>& ciphertext1, ConstCiphertext<DCRTPoly> ciphertext2) const override;

    /////////////////////////////////////
    // SERIALIZATION
    /////////////////////////////////////

    template <class Archive>
    void save(Archive& ar) const {
        ar(cereal::base_class<LeveledSHERNS>(this));
    }

    template <class Archive>
    void load(Archive& ar) {
        ar(cereal::base_class<LeveledSHERNS>(this));
    }

    std::string SerializedObjectName() const {
        return "LeveledSHECKKSRNS";
    }
};

}  // namespace lbcrypto

#endif  //OPENFHE_SLAPRNS_LEVELEDSHE_H
