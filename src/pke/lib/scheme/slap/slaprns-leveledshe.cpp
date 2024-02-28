//
// Created by Antonia Januszewicz on 2/28/24.
//

//==================================================================================
// BSD 2-Clause License
//
// Copyright (c) 2014-2022, NJIT, Duality Technologies Inc. and other contributors
//
// All rights reserved.
//
// Author TPOC: contact@openfhe.org
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice, this
//    list of conditions and the following disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright notice,
//    this list of conditions and the following disclaimer in the documentation
//    and/or other materials provided with the distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
// FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
// DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
// SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
// OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//==================================================================================

/*
CKKS implementation. See https://eprint.iacr.org/2020/1118 for details.
 */

#include "cryptocontext.h"

#include "math/hal/basicint.h"

#include "scheme/slaprns/slaprns-cryptoparameters.h"
#include "scheme/slaprns/slaprns-leveledshe.h"

#include "schemebase/base-scheme.h"

namespace lbcrypto {

/////////////////////////////////////////
// SHE ADDITION CONSTANT
/////////////////////////////////////////

Ciphertext<DCRTPoly> LeveledSHESLAPRNS::EvalAdd(ConstCiphertext<DCRTPoly> ciphertext1,
                                                                     ConstCiphertext<DCRTPoly> ciphertext2) const {
    Ciphertext<DCRTPoly> result = ciphertext1->Clone();
    EvalAddInPlace(result, ciphertext2);
    return result;
}

void LeveledSHESLAPRNS::EvalAddInPlace(Ciphertext<DCRTPoly>& ciphertext1, ConstCiphertext<DCRTPoly> ciphertext2) const {
    std::vector<DCRTPoly>& cv = ciphertext1->GetElements();
    std::vector<DCRTPoly> cv2 = ciphertext2->GetElements();
    cv.insert(cv.begin(),cv.begin(),cv.end());
}

}  // namespace lbcrypto
