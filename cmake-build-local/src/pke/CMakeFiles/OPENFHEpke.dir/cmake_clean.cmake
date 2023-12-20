file(REMOVE_RECURSE
  "../../lib/libOPENFHEpke.1.1.1.dylib"
  "../../lib/libOPENFHEpke.1.dylib"
  "../../lib/libOPENFHEpke.dylib"
  "../../lib/libOPENFHEpke.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/OPENFHEpke.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
