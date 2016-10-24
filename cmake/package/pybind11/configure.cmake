set(build_pybind11 FALSE CACHE BOOL "Build pybind11")
set(pybind11_version "1.8.0")

if(build_pybind11)
    set(pybind11_version ${pybind11_version} CACHE STRING
        "Version of pybind11 to build")

    set(pybind11_settings
        "version: ${pybind11_version}"
    )
endif()

set(filename
    ${peacock_package_dir}/pybind11/${pybind11_version}/configure.cmake)
include(${filename})