//
// Created by Antonia Januszewicz on 1/7/24.
//

#ifndef OPENFHE_SLAPRNS_PKE_H
#define OPENFHE_SLAPRNS_PKE_H

#include "schemerns/rns-pke.h"

#include <string>

/**
 * @namespace lbcrypto
 * The namespace of lbcrypto
 */
namespace lbcrypto {

class PKESLAPRNS : public PKERNS {
    using ParmType = typename DCRTPoly::Params;
    using IntType  = typename DCRTPoly::Integer;
    using DugType  = typename DCRTPoly::DugType;
    using DggType  = typename DCRTPoly::DggType;
    using TugType  = typename DCRTPoly::TugType;

public:
    virtual ~PKESLAPRNS() {}

    /**
   * Method for decrypting plaintext
   *
   * @param &privateKey private key used for decryption.
   * @param &ciphertext ciphertext id decrypted.
   * @param *plaintext the plaintext output.
   * @return the decoding result.
   */
    DecryptResult Decrypt(ConstCiphertext<DCRTPoly> ciphertext, const PrivateKey<DCRTPoly> privateKey,
                          const PublicKey<DCRTPoly> publicKey, Poly* plaintext) const override;

    std::vector<DecryptResult> PolyDecrypt(ConstCiphertext<DCRTPoly> ciphertext,
                                           const PrivateKey<DCRTPoly> privateKey,
                                           NativePoly* plaintext);

    DecryptResult MSDecrypt(ConstCiphertext<DCRTPoly> ciphertext, const PrivateKey<DCRTPoly> privateKey,
                          NativePoly* plaintext);

    DecryptResult NSDecrypt(ConstCiphertext<DCRTPoly> ciphertext, const PrivateKey<DCRTPoly> privateKey,
                            const PublicKey<DCRTPoly> publicKey, NativePoly* plaintext);

    Ciphertext<DCRTPoly> Encrypt(DCRTPoly plaintext, const PrivateKey<DCRTPoly> privateKey,
                                        const PublicKey<DCRTPoly> publicKey) const override;

    Ciphertext<DCRTPoly> NSEncrypt(DCRTPoly plaintext, const PrivateKey<DCRTPoly> privateKey,
                                 const PublicKey<DCRTPoly> publicKey);

    Ciphertext<DCRTPoly> MSEncrypt(DCRTPoly plaintext, const PrivateKey<DCRTPoly> privateKey,
                                 const PublicKey<DCRTPoly> publicKey);
    /**
   * Method for decrypting plaintext with noise flooding
   *
   * @param &privateKey private key used for decryption.
   * @param &ciphertext ciphertext id decrypted.
   * @param *plaintext the plaintext output.
   * @return the decoding result.
   */
    //DecryptResult Decrypt(ConstCiphertext<DCRTPoly> ciphertext, const PrivateKey<DCRTPoly> privateKey,
    //                      Poly* plaintext) const override;

    /////////////////////////////////////
    // SERIALIZATION
    /////////////////////////////////////

    template <class Archive>
    void save(Archive& ar) const {
        ar(cereal::base_class<PKERNS>(this));
    }

    template <class Archive>
    void load(Archive& ar) {
        ar(cereal::base_class<PKERNS>(this));
    }

    std::string SerializedObjectName() const {
        return "PKESLAPRNS";
    }
};

}  // namespace lbcrypto


#endif  //OPENFHE_SLAPRNS_PKE_H
