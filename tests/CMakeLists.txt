# CTests
if(HDF5_FOUND
    AND NOT CMAKE_CXX_COMPILER_ID MATCHES MSVC
    AND NOT (CMAKE_CXX_COMPILER_ID STREQUAL "GNU" AND CMAKE_CXX_COMPILER_VERSION VERSION_LESS 15.0))

  # Make an additional library that links in libhdf
  add_library (sm_hdfdata STATIC)
  target_sources_modules(sm_hdfdata MODULES
    ${SM_HDFDATA_MODULES}
  )
  target_include_directories(sm_hdfdata AFTER PRIVATE ${HDF5_INCLUDE_DIR})
  target_link_libraries(sm_hdfdata ${HDF5_C_LIBRARIES})

  # Test HDF file access
  add_executable(hdfdata1 hdfdata1.cpp)
  target_link_libraries (hdfdata1 PRIVATE sm_hdfdata)
  add_test(hdfdata1 hdfdata1)

  add_executable(hdfdata2 hdfdata2.cpp)
  target_link_libraries (hdfdata2 PRIVATE sm_hdfdata)
  add_test(hdfdata2 hdfdata2)

  add_executable(hdfdata3 hdfdata3.cpp)
  target_compile_definitions(hdfdata3 PUBLIC FLT=float)
  target_link_libraries (hdfdata3 PRIVATE sm_hdfdata)
  add_test(hdfdata3 hdfdata3)

  add_executable(hdfdata3d hdfdata3.cpp)
  target_compile_definitions(hdfdata3d PUBLIC FLT=double)
  target_link_libraries (hdfdata3d PRIVATE sm_hdfdata)
  add_test(hdfdata3d hdfdata3d)

  add_executable(hdfdata4 hdfdata4.cpp)
  target_compile_definitions(hdfdata4 PUBLIC FLT=float)
  target_link_libraries (hdfdata4 PRIVATE sm_hdfdata)
  add_test(hdfdata4 hdfdata4)

  add_executable(hdfdata5 hdfdata5.cpp)
  target_link_libraries (hdfdata5 PRIVATE sm_hdfdata)
  add_test(hdfdata5 hdfdata5)
endif()
