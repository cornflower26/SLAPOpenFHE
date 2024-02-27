//
// Created by Antonia Januszewicz on 1/17/24.
//

#ifndef OPENFHE_SLAPRNS_CRYPTOPARAMETERS_H
#define OPENFHE_SLAPRNS_CRYPTOPARAMETERS_H
#include "schemerns/rns-cryptoparameters.h"

#include <memory>
#include <string>

/**
 * @namespace lbcrypto
 * The namespace of lbcrypto
 */
namespace lbcrypto {

class CryptoParametersSLAPRNS : public CryptoParametersRNS {
    using ParmType = typename DCRTPoly::Params;
    SLAPScheme scheme1;
    long double b;
    long double gamma;
    long double a;
    long double delta;
    long double beta;
    long double epsilon;
    unsigned int plainBits;
    unsigned int packingSize;
    unsigned int numUsers;
    unsigned int iters;
    long double scale;
    unsigned int maxCtexts;
    unsigned int kPrime;
    size_t N;
    size_t polyModDeg;
    uint64_t * moduliData;
    size_t modCount;
    uint64_t * primitiveRoots;
    uint64_t * twiddleFactors;
    uint64_t * n_inv_mod_q;

    /**
    int num, den;
    unsigned int num_users;
    uint64_t * delta_mod_q = NULL;
    uint64_t * t_mod_q = NULL;
    Scheme sc;
    Transition * t_to_q;
    Transition * q_to_t;
    long double _beta;
     **/

public:
    CryptoParametersSLAPRNS() : CryptoParametersRNS() {}

    CryptoParametersSLAPRNS(const CryptoParametersSLAPRNS& rhs) : CryptoParametersRNS(rhs) {}

    CryptoParametersSLAPRNS(std::shared_ptr<ParmType> params, const PlaintextModulus& plaintextModulus,
                            float distributionParameter, float assuranceMeasure, SecurityLevel securityLevel,
                            usint digitSize, SecretKeyDist secretKeyDist, int maxRelinSkDeg = 2,
                            KeySwitchTechnique ksTech = BV, ScalingTechnique scalTech = FIXEDMANUAL,
                            EncryptionTechnique encTech = STANDARD, MultiplicationTechnique multTech = HPS,
                            MultipartyMode multipartyMode                         = FIXED_NOISE_MULTIPARTY,
                            ExecutionMode executionMode                           = EXEC_EVALUATION,
                            DecryptionNoiseMode decryptionNoiseMode               = FIXED_NOISE_DECRYPT,
                            COMPRESSION_LEVEL mPIntBootCiphertextCompressionLevel = COMPRESSION_LEVEL::SLACK)
        : CryptoParametersRNS(params, plaintextModulus, distributionParameter, assuranceMeasure, securityLevel,
                              digitSize, secretKeyDist, maxRelinSkDeg, ksTech, scalTech, encTech, multTech,
                              multipartyMode, executionMode, decryptionNoiseMode, mPIntBootCiphertextCompressionLevel) {
    }

    CryptoParametersSLAPRNS(std::shared_ptr<ParmType> params, EncodingParams encodingParams,
                            float distributionParameter, float assuranceMeasure, SecurityLevel securityLevel,
                            usint digitSize, SecretKeyDist secretKeyDist, int maxRelinSkDeg = 2,
                            KeySwitchTechnique ksTech = BV, ScalingTechnique scalTech = FIXEDMANUAL,
                            EncryptionTechnique encTech = STANDARD, MultiplicationTechnique multTech = HPS,
                            ProxyReEncryptionMode PREMode           = NOT_SET,
                            MultipartyMode multipartyMode           = FIXED_NOISE_MULTIPARTY,
                            ExecutionMode executionMode             = EXEC_EVALUATION,
                            DecryptionNoiseMode decryptionNoiseMode = FIXED_NOISE_DECRYPT,
                            PlaintextModulus noiseScale = 1, uint32_t statisticalSecurity = 30,
                            uint32_t numAdversarialQueries = 1, uint32_t thresholdNumOfParties = 1,
                            COMPRESSION_LEVEL mPIntBootCiphertextCompressionLevel = COMPRESSION_LEVEL::SLACK)
        : CryptoParametersRNS(params, encodingParams, distributionParameter, assuranceMeasure, securityLevel, digitSize,
                              secretKeyDist, maxRelinSkDeg, ksTech, scalTech, encTech, multTech, PREMode,
                              multipartyMode, executionMode, decryptionNoiseMode, noiseScale, statisticalSecurity,
                              numAdversarialQueries, thresholdNumOfParties, mPIntBootCiphertextCompressionLevel) {}

    void PrecomputeCRTTables(KeySwitchTechnique ksTech, ScalingTechnique scalTech, EncryptionTechnique encTech,
                             MultiplicationTechnique multTech, uint32_t numPartQ, uint32_t auxBits,
                             uint32_t extraBits) override{};

    virtual ~CryptoParametersSLAPRNS() {}

    uint64_t FindAuxPrimeStep() const override { return 5;};

    long double getBeta() const {
        return beta;
    }
    void setBeta(long double beta0) {
        CryptoParametersSLAPRNS::beta = beta0;
    }

    SLAPScheme getScheme1() const {
        return scheme1;
    }
    void setScheme1(SLAPScheme scheme10) {
        scheme1 = scheme10;
    }
    long double getB() const {
        return b;
    }
    void setB(long double b0) {
        CryptoParametersSLAPRNS::b = b0;
    }
    long double getGamma() const {
        return gamma;
    }
    void setGamma(long double gamma0) {
        CryptoParametersSLAPRNS::gamma = gamma0;
    }
    long double getA() const {
        return a;
    }
    void setA(long double a0) {
        CryptoParametersSLAPRNS::a = a0;
    }
    long double getDelta() const {
        return delta;
    }
    void setDelta(long double delta0) {
        CryptoParametersSLAPRNS::delta = delta0;
    }
    long double getEpsilon() const {
        return epsilon;
    }
    void setEpsilon(long double epsilon0) {
        CryptoParametersSLAPRNS::epsilon = epsilon0;
    }
    unsigned int getPlainBits() const {
        return plainBits;
    }
    void setPlainBits(unsigned int plainBits0) {
        CryptoParametersSLAPRNS::plainBits = plainBits0;
    }
    unsigned int getPackingSize() const {
        return packingSize;
    }
    void setPackingSize(unsigned int packingSize0) {
        CryptoParametersSLAPRNS::packingSize = packingSize0;
    }
    unsigned int getNumUsers() const {
        return numUsers;
    }
    void setNumUsers(unsigned int numUsers0) {
        CryptoParametersSLAPRNS::numUsers = numUsers0;
    }
    unsigned int getIters() const {
        return iters;
    }
    void setIters(unsigned int iters0) {
        CryptoParametersSLAPRNS::iters = iters0;
    }
    long double getScale() const {
        return scale;
    }
    void setScale(long double scale0) {
        CryptoParametersSLAPRNS::scale = scale0;
    }
    unsigned int getMaxCtexts() const {
        return maxCtexts;
    }
    void setMaxCtexts(unsigned int maxCtexts0) {
        CryptoParametersSLAPRNS::maxCtexts = maxCtexts0;
    }
    unsigned int getKPrime() const {
        return kPrime;
    }
    void setKPrime(unsigned int kPrime0) {
        CryptoParametersSLAPRNS::kPrime = kPrime0;
    }
    size_t getN() const {
        return N;
    }
    void setN(size_t n) {
        N = n;
    }
    size_t getPolyModDeg() const {
        return polyModDeg;
    }
    void setPolyModDeg(size_t polyModDeg0) {
        CryptoParametersSLAPRNS::polyModDeg = polyModDeg0;
    }
    uint64_t* getModuliData() const {
        return moduliData;
    }
    void setModuliData(uint64_t* moduliData0) {
        CryptoParametersSLAPRNS::moduliData = moduliData0;
    }
    size_t getModCount() const {
        return modCount;
    }
    void setModCount(size_t modCount0) {
        CryptoParametersSLAPRNS::modCount = modCount0;
    }
    uint64_t* getPrimitiveRoots() const {
        return primitiveRoots;
    }
    void setPrimitiveRoots(uint64_t* primitiveRoots0) {
        CryptoParametersSLAPRNS::primitiveRoots = primitiveRoots0;
    }
    uint64_t* getTwiddleFactors() const {
        return twiddleFactors;
    }
    void setTwiddleFactors(uint64_t* twiddleFactors0) {
        CryptoParametersSLAPRNS::twiddleFactors = twiddleFactors0;
    }
    uint64_t* getNInvModQ() const {
        return n_inv_mod_q;
    }
    void setNInvModQ(uint64_t* nInvModQ) {
        n_inv_mod_q = nInvModQ;
    }

    /////////////////////////////////////
    // SERIALIZATION
    /////////////////////////////////////

    template <class Archive>
    void save(Archive& ar, std::uint32_t const version) const {
        ar(cereal::base_class<CryptoParametersRNS>(this));
    }

    template <class Archive>
    void load(Archive& ar, std::uint32_t const version) {
    }

    std::string SerializedObjectName() const override {
        return "CryptoParametersSLAPRNS";
    }
    static uint32_t SerializedVersion() {
        return 1;
    }

};

}  // namespace lbcrypto

#endif  //OPENFHE_SLAPRNS_CRYPTOPARAMETERS_H
