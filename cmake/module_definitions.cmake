#
# Define variables of module groups for use by the sebsjames/maths_hdf
# build process itself, and by client projects.
#
macro(setup_module_variables_for_maths_hdf base_directory maths_directory)

  include(${maths_directory}/cmake/module_definitions.cmake)
  setup_module_variables_for_maths(${maths_directory})
  
  set(SM_HDFDATA_MODULES
    ${SM_VEC_MODULES}
    ${SM_VVEC_MODULES}
    ${SM_UTIL_MODULES}
    ${base_directory}/sm/hdfdata.cppm
  )
  list(REMOVE_DUPLICATES SM_HDFDATA_MODULES)

  set(SM_ANNEAL_HDF_MODULES
    ${SM_ANNEAL_MODULES}
    ${SM_HDFDATA_MODULES}
    ${base_directory}/sm/anneal_hdf.cppm
  )
  list(REMOVE_DUPLICATES SM_ANNEAL_HDF_MODULES)
  
  set(SM_HEXGRID_HDF_MODULES
    ${SM_HEXGRID_MODULES}
    ${SM_HDFDATA_MODULES}
    ${base_directory}/sm/hexgrid_hdf.cppm
  )
  list(REMOVE_DUPLICATES SM_HEXGRID_HDF_MODULES)

  set(SM_CARTGRID_HDF_MODULES
    ${SM_CARTGRID_MODULES}
    ${base_directory}/sm/cartgrid_hdf.cppm    
  )
  list(REMOVE_DUPLICATES SM_CARTGRID_HDF_MODULES)
  
endmacro()
