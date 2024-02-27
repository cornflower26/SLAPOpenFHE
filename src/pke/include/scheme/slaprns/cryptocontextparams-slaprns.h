//
// Created by Antonia Januszewicz on 1/6/24.
//

/*
  Parameter class to generate SLAPRNS crypto context
 */

#ifndef OPENFHE_CRYPTOCONTEXTPARAMS_SLAPRNS_H
#define OPENFHE_CRYPTOCONTEXTPARAMS_SLAPRNS_H

#include "scheme/cryptocontextparams-base.h"

#include <string>
#include <vector>
#include <cstdint>

namespace lbcrypto {

class CryptoContextSLAPRNS;

// every CCParams class should include the following forward declaration as there is
// no general CCParams class template. This way we may create scheme specific classes
// derived from Params or have them completely independent.
template <typename T>
class CCParams;
//====================================================================================================================
template <>
class CCParams<CryptoContextSLAPRNS> : public Params {
    SLAPScheme scheme1 = NS;
    long double b;
    long double gamma;
    long double a;
    long double delta;
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

public:
    CCParams() : Params(SLAPRNS_SCHEME) {}
    explicit CCParams(const std::vector<std::string>& vals) : Params(vals) {}
    CCParams(const CCParams& obj) = default;
    CCParams(CCParams&& obj)      = default;

    void calculateParms();

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
        CCParams::b = b0;
    }
    long double getGamma() const {
        return gamma;
    }
    void setGamma(long double gamma0) {
        CCParams::gamma = gamma0;
    }
    long double getA() const {
        return a;
    }
    void setA(long double a0) {
        CCParams::a = a0;
    }
    long double getDelta() const {
        return delta;
    }
    void setDelta(long double delta0) {
        CCParams::delta = delta0;
    }
    long double getEpsilon() const {
        return epsilon;
    }
    void setEpsilon(long double epsilon0) {
        CCParams::epsilon = epsilon0;
    }
    unsigned int getPlainBits() const {
        return plainBits;
    }
    void setPlainBits(unsigned int plainBits0) {
        CCParams::plainBits = plainBits0;
    }
    unsigned int getPackingSize() const {
        return packingSize;
    }
    void setPackingSize(unsigned int packingSize0) {
        CCParams::packingSize = packingSize0;
    }
    unsigned int getNumUsers() const {
        return numUsers;
    }
    void setNumUsers(unsigned int numUsers0) {
        CCParams::numUsers = numUsers0;
    }
    unsigned int getIters() const {
        return iters;
    }
    void setIters(unsigned int iters0) {
        CCParams::iters = iters0;
    }
    long double getScale() const {
        return scale;
    }
    void setScale(long double scale0) {
        CCParams::scale = scale0;
    }
    unsigned int getMaxCtexts() const {
        return maxCtexts;
    }
    void setMaxCtexts(unsigned int maxCtexts0) {
        CCParams::maxCtexts = maxCtexts0;
    }
    unsigned int getKPrime() const {
        return kPrime;
    }
    void setKPrime(unsigned int kPrime0) {
        CCParams::kPrime = kPrime0;
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
        CCParams::polyModDeg = polyModDeg0;
    }
    uint64_t* getModuliData() const {
        return moduliData;
    }
    void setModuliData(uint64_t* moduliData0) {
        CCParams::moduliData = moduliData0;
    }
    size_t getModCount() const {
        return modCount;
    }
    void setModCount(size_t modCount0) {
        CCParams::modCount = modCount0;
    }
    uint64_t* getPrimitiveRoots() const {
        return primitiveRoots;
    }
    void setPrimitiveRoots(uint64_t* primitiveRoots0) {
        CCParams::primitiveRoots = primitiveRoots0;
    }
    uint64_t* getTwiddleFactors() const {
        return twiddleFactors;
    }
    void setTwiddleFactors(uint64_t* twiddleFactors0) {
        CCParams::twiddleFactors = twiddleFactors0;
    }
    uint64_t* getNInvModQ() const {
        return n_inv_mod_q;
    }
    void setNInvModQ(uint64_t* nInvModQ) {
        n_inv_mod_q = nInvModQ;
    }
};
//====================================================================================================================

}  // namespace lbcrypto

#endif  //OPENFHE_CRYPTOCONTEXTPARAMS_SLAPRNS_H
