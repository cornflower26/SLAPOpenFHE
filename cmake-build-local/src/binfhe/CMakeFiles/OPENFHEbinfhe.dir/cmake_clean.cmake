file(REMOVE_RECURSE
  "../../lib/libOPENFHEbinfhe.1.1.1.dylib"
  "../../lib/libOPENFHEbinfhe.1.dylib"
  "../../lib/libOPENFHEbinfhe.dylib"
  "../../lib/libOPENFHEbinfhe.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/OPENFHEbinfhe.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
