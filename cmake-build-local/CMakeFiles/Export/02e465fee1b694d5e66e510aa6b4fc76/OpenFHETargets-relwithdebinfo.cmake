#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "OPENFHEcore" for configuration "RelWithDebInfo"
set_property(TARGET OPENFHEcore APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(OPENFHEcore PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/libOPENFHEcore.1.1.1.dylib"
  IMPORTED_SONAME_RELWITHDEBINFO "@rpath/libOPENFHEcore.1.dylib"
  )

list(APPEND _cmake_import_check_targets OPENFHEcore )
list(APPEND _cmake_import_check_files_for_OPENFHEcore "${_IMPORT_PREFIX}/lib/libOPENFHEcore.1.1.1.dylib" )

# Import target "OPENFHEpke" for configuration "RelWithDebInfo"
set_property(TARGET OPENFHEpke APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(OPENFHEpke PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/libOPENFHEpke.1.1.1.dylib"
  IMPORTED_SONAME_RELWITHDEBINFO "@rpath/libOPENFHEpke.1.dylib"
  )

list(APPEND _cmake_import_check_targets OPENFHEpke )
list(APPEND _cmake_import_check_files_for_OPENFHEpke "${_IMPORT_PREFIX}/lib/libOPENFHEpke.1.1.1.dylib" )

# Import target "OPENFHEbinfhe" for configuration "RelWithDebInfo"
set_property(TARGET OPENFHEbinfhe APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(OPENFHEbinfhe PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/libOPENFHEbinfhe.1.1.1.dylib"
  IMPORTED_SONAME_RELWITHDEBINFO "@rpath/libOPENFHEbinfhe.1.dylib"
  )

list(APPEND _cmake_import_check_targets OPENFHEbinfhe )
list(APPEND _cmake_import_check_files_for_OPENFHEbinfhe "${_IMPORT_PREFIX}/lib/libOPENFHEbinfhe.1.1.1.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
