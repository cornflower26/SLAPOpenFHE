//
// Created by Antonia Januszewicz on 2/28/24.
//

#define PROFILE

#include <memory>

#include "scheme/slaprns/slaprns-scheme.h"

#include "scheme/slaprns/slaprns-leveledshe.h"
#include "scheme/slaprns/slaprns-pke.h"

namespace lbcrypto {

void SchemeSLAPRNS::Enable(PKESchemeFeature feature) {
    switch (feature) {
        case PKE:
            if (m_PKE == nullptr)
                m_PKE = std::make_shared<PKESLAPRNS>();
                //m_PKE = std::make_shared<PKESLAPRNS>();
            break;
        case KEYSWITCH:
            // m_KeySwitch must be initialized later by calling SetKeySwitchingTechnique() with the value of key switching technique from cryptoparams
            break;
        case LEVELEDSHE:
            if (m_LeveledSHE == nullptr)
                m_LeveledSHE = std::make_shared<LeveledSHESLAPRNS>();
            break;
        default:
            std::stringstream ss;
            ss << feature;
            OPENFHE_THROW(not_implemented_error,
                          std::string("This feature [") + ss.str() + "] is not supported for SLAPRNS scheme");
    }
}

}  // namespace lbcrypto