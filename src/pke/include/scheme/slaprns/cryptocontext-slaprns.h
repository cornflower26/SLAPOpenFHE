//
// Created by Antonia Januszewicz on 1/24/24.
//

#ifndef OPENFHE_CRYPTOCONTEXT_SLAPRNS_H
#define OPENFHE_CRYPTOCONTEXT_SLAPRNS_H


#include "lattice/lat-hal.h"
#include "scheme/slaprns/gen-cryptocontext-slaprns-internal.h"
#include "scheme/slaprns/cryptocontextparams-slaprns.h"
#include "scheme/slaprns/slaprns-cryptoparameters.h"
#include "scheme/slaprns/slaprns-scheme.h"
#include "cryptocontextfactory.h"

namespace lbcrypto {

class CryptoContextSLAPRNS {
    using Element = DCRTPoly;

public:
    using ContextType               = CryptoContext<Element>;  // required by GenCryptoContext() in gen-cryptocontext.h
    using Factory                   = CryptoContextFactory<Element>;
    using PublicKeyEncryptionScheme = SchemeSLAPRNS;
    using CryptoParams              = CryptoParametersSLAPRNS;

    static CryptoContext<Element> genCryptoContext(const CCParams<CryptoContextSLAPRNS>& parameters) {
        return genCryptoContextSLAPRNSInternal<CryptoContextSLAPRNS, Element>(parameters);
    }
};

}  // namespace lbcrypto


#endif  //OPENFHE_CRYPTOCONTEXT_SLAPRNS_H
