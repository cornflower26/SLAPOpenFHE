//
// Created by Antonia Januszewicz on 1/24/24.
//

#ifndef _GEN_CRYPTOCONTEXT_SLAPRNS_INTERNAL_H
#define _GEN_CRYPTOCONTEXT_SLAPRNS_INTERNAL_H
#include "encoding/encodingparams.h"
#include "constants.h"
#include "utils/exception.h"
#include "scheme/scheme-utils.h"
#include "scheme/scheme-id.h"
#include "scheme/slaprns/slaprns-parametergeneration.h"

#include <memory>

namespace lbcrypto {

// forward declarations (don't include headers as compilation fails when you do)
template <typename T>
class CCParams;

template <typename ContextGeneratorType, typename Element>
typename ContextGeneratorType::ContextType genCryptoContextSLAPRNSInternal(
    const CCParams<ContextGeneratorType>& parameters) {
    using ParmType                   = typename Element::Params;
    using IntType                    = typename Element::Integer;

    usint scalingModSize    = parameters.GetScalingModSize();
    auto ep = std::make_shared<ParmType>(0, IntType(0), IntType(0));
    constexpr float assuranceMeasure = 36;
    double floodingNoiseStd = 0;


    EncodingParams encodingParams(std::make_shared<EncodingParamsImpl>(scalingModSize, parameters.GetBatchSize()));

    // clang-format off
    auto params = std::make_shared<typename ContextGeneratorType::CryptoParams>(
        ep,
        encodingParams,
        parameters.GetStandardDeviation(),
        assuranceMeasure,
        parameters.GetSecurityLevel(),
        parameters.GetDigitSize(),
        parameters.GetSecretKeyDist(),
        parameters.GetMaxRelinSkDeg(),
        parameters.GetKeySwitchTechnique(),
        parameters.GetScalingTechnique(),
        parameters.GetEncryptionTechnique(),
        parameters.GetMultiplicationTechnique(),
        parameters.GetPREMode(),
        parameters.GetMultipartyMode(),
        parameters.GetExecutionMode(),
        parameters.GetDecryptionNoiseMode(),
        1,  // noise scale: TODO (dsuponit): this should be reviewed as we also call SetNoiseScale(1) (see below)
        parameters.GetStatisticalSecurity(),
        parameters.GetNumAdversarialQueries(),
        parameters.GetThresholdNumOfParties(),
        parameters.GetInteractiveBootCompressionLevel());

    // for CKKS scheme noise scale is always set to 1
    params->SetNoiseScale(1);
    params->SetFloodingDistributionParameter(floodingNoiseStd);

    auto scheme = std::make_shared<typename ContextGeneratorType::PublicKeyEncryptionScheme>();
    scheme->SetKeySwitchingTechnique(parameters.GetKeySwitchTechnique());
    scheme->ParamsGenSLAPRNS(
        params,
        parameters.getPlainBits(),
        parameters.getPackingSize(),
        parameters.getNumUsers(),
        parameters.getIters(),
        parameters.getKPrime(),
        parameters.getScheme1());

    // clang-format on

    auto cc = ContextGeneratorType::Factory::GetContext(params, scheme);

    /**
    unsigned int q_bits = ctext_modulus_size(plain_bits, num_users, sc);
    ctext_parms = new Parameters(q_bits);
    ZZ q = ctext_parms->modulus();
    unsigned int N = ctext_parms->poly_mod_degree();

    unsigned int plain_mod_size = plain_bits < PLAIN_MOD_SIZE_MAX ? plain_bits : PLAIN_MOD_SIZE_MAX;
    unsigned int num_plain_moduli = plain_bits / packed_bits;
    if(!num_plain_moduli){
        num_plain_moduli += 1;
    }

    vector<uint64_t> plain_moduli = primes_unoptimized(plain_mod_size, num_plain_moduli);
    plain_parms = new Parameters(N, plain_moduli, false); //Don't initialize NTT stuff for plaintext domain
    assert(plain_parms->no_repeating());
    ZZ t = plain_parms->modulus();

    size_t k = ctext_parms->moduli_count();

    delta_mod_q = (uint64_t *) malloc(sizeof(uint64_t) * k);
    t_mod_q = (uint64_t *) malloc(sizeof(uint64_t) * k);


    ZZ tmp;
    ZZ delta = q/t;
    ZZ tmp_mod;
    //Fill delta mod q for later scaling
    for(size_t i = 0; i < k; i++){
        uint64_t qi = ctext_parms->moduli(i);
        uint64_t tmp_delta, tmp_t;
        //TODO fix - don't write directly to array
        tmp_mod = NTL::ZZFromBytes((const unsigned char *) &qi, sizeof(uint64_t));
        tmp = delta % tmp_mod;
        BytesFromZZ((unsigned char *) &tmp_delta, tmp, sizeof(uint64_t));
        delta_mod_q[i] = tmp_delta;
        tmp = t % tmp_mod;
        BytesFromZZ((unsigned char *) &tmp_t, tmp, sizeof(uint64_t));
        t_mod_q[i] = tmp_t;
    }

    //Transition data
    t_to_q = new Transition(*plain_parms, *ctext_parms);
    q_to_t = new Transition(*ctext_parms, *plain_parms);
     **/
    cc->setSchemeId(SCHEME::SLAPRNS_SCHEME);
    return cc;
}
}  // namespace lbcrypto

#endif  //_GEN_CRYPTOCONTEXT_SLAPRNS_INTERNAL_H
