//
// Created by Antonia Januszewicz on 1/7/24.
//
#define PROFILE

#include "cryptocontext.h"
#include "scheme/slaprns/slaprns-cryptoparameters.h"
#include "scheme/slaprns/slaprns-pke.h"

namespace lbcrypto {


std::vector<DecryptResult> PolyDecrypt(ConstCiphertext<DCRTPoly> ciphertext, const PrivateKey<DCRTPoly> privateKey,
                                       NativePoly* plaintext) {
    std::vector<DecryptResult> retval = std::vector<DecryptResult>();
    return retval;
}

DecryptResult MSDecrypt(ConstCiphertext<DCRTPoly> ciphertext, const PrivateKey<DCRTPoly> privateKey,
                        Poly* plaintext) {
    const auto cryptoParams = std::dynamic_pointer_cast<CryptoParametersSLAPRNS>(ciphertext->GetCryptoParameters());
    const std::vector<DCRTPoly>& cv = ciphertext->GetElements();
    size_t num_ctexts = cv.size();
    DCRTPoly ret;
    for (unsigned int i = 0; i < num_ctexts; i++) {
        ret += cv[i];
    }
    //Now scale and reduce
    *plaintext = scale_down(ret, cryptoParams);
    return DecryptResult(plaintext->GetLength());
}

DecryptResult NSDecrypt(ConstCiphertext<DCRTPoly> ciphertext, const PrivateKey<DCRTPoly> privateKey,
                        const PublicKey<DCRTPoly> publicKey, Poly* plaintext) {
   const auto cryptoParams = std::dynamic_pointer_cast<CryptoParametersSLAPRNS>(ciphertext->GetCryptoParameters());
   const std::vector<DCRTPoly>& cv = ciphertext->GetElements();
   size_t num_ctexts = cv.size();
   DCRTPoly ret = privateKey->GetPrivateElement()*publicKey->GetPublicElements().at(0);
    //Add all the ciphertexts (mod q)
    for(unsigned int i = 0; i < num_ctexts; i++){
        ret += cv[i];
    }
    //Now reduce to mod t
    // *plaintext = base_conv(plain_parms, *q_to_t);
    *plaintext = ret.SwitchCRTBasis(cryptoParams, *q_to_t);
    return DecryptResult(plaintext->GetLength());
}

DecryptResult Decrypt(ConstCiphertext<DCRTPoly> ciphertext, const PrivateKey<DCRTPoly> privateKey,
                      const PublicKey<DCRTPoly> publicKey, Poly* plaintext) {
    const auto cryptoParams = std::dynamic_pointer_cast<CryptoParametersSLAPRNS>(ciphertext->GetCryptoParameters());
    return (cryptoParams->getScheme1() == NS) ? NSDecrypt(ciphertext, privateKey, publicKey, plaintext) :
                              MSDecrypt(ciphertext, privateKey, plaintext);
}

Ciphertext<DCRTPoly> NSEncrypt(DCRTPoly plaintext, const PrivateKey<DCRTPoly> privateKey,
                               const PublicKey<DCRTPoly> publicKey){
    const auto cryptoParams = std::dynamic_pointer_cast<CryptoParametersSLAPRNS>(plaintext.GetParams());
    //Multiply secret and public keys
    DCRTPoly ret = privateKey->GetPrivateElement()*publicKey->GetPublicElements().at(0);
    //Get the error, and scale it by the plaintext modulus
    DCRTPoly e(ret.GetParams());
    //TODO replace this - taken out for debugging
    //e.error(this->dl);
    //e.zero();
    e.AddRandomNoise(5);
    e *= t_mod_q; //Per-modulus scaling
    //Add in the error to make a RLWE term
    ret += e;
    //Raise x to base q
    //DCRTPoly x_raised = plaintext.base_conv(ctext_parms, *t_to_q);
    DCRTPoly x_raised = plaintext.SwitchCRTBasis(cryptoParams,5);
    //Now add the message
    ret += x_raised;

    Ciphertext<DCRTPoly> retval = Ciphertext<DCRTPoly>();
    retval->SetElement(ret);
    return retval;

}

Ciphertext<DCRTPoly> MSEncrypt(DCRTPoly plaintext, const PrivateKey<DCRTPoly> privateKey,
                               const PublicKey<DCRTPoly> publicKey){
    //Multiply secret and public keys
    DCRTPoly ret = privateKey->GetPrivateElement()*publicKey->GetPublicElements().at(0);;
    //Get the error, and scale it by the plaintext modulus
    //DCRTPoly e(this->ctext_parms);
    DCRTPoly e(ret.GetParams());
    e.AddRandomNoise(5);
    //e.error(this->dl);
    //Add in the error to make a RLWE term
    ret += e;
    //Raise x to base q
    DCRTPoly x_raised = x.base_conv(ctext_parms, *t_to_q);
    //Scale x by delta
    x_raised *= delta_mod_q;
    //Now add the message
    ret += x_raised;

    Ciphertext<DCRTPoly> retval = Ciphertext<DCRTPoly>();
    retval->SetElement(ret);
    return retval;
}

Ciphertext<DCRTPoly> Encrypt(DCRTPoly plaintext, const PrivateKey<DCRTPoly> privateKey,
                             const PublicKey<DCRTPoly> publicKey) {
    const auto cryptoParams = std::dynamic_pointer_cast<CryptoParametersSLAPRNS>(plaintext.GetParams());
    return (cryptoParams->getScheme1() ==NS)? NSEncrypt(plaintext, privateKey, publicKey) : MSEncrypt(plaintext, privateKey, publicKey);
}

}