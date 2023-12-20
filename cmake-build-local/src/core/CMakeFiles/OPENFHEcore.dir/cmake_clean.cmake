file(REMOVE_RECURSE
  "../../lib/libOPENFHEcore.1.1.1.dylib"
  "../../lib/libOPENFHEcore.1.dylib"
  "../../lib/libOPENFHEcore.dylib"
  "../../lib/libOPENFHEcore.pdb"
)

# Per-language clean rules from dependency scanning.
foreach(lang C CXX)
  include(CMakeFiles/OPENFHEcore.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
