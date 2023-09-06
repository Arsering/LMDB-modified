cmake_minimum_required(VERSION 3.2)

project(tiny-process-library VERSION 2.0.2)

add_library(tiny-process-library process.cpp)

if(MSVC)
  target_compile_definitions(tiny-process-library PRIVATE _CRT_SECURE_NO_WARNINGS)
endif()

if(WIN32)
  target_sources(tiny-process-library PRIVATE process_win.cpp)
  #If compiled using MSYS2, use sh to run commands
  if(MSYS)
    target_compile_definitions(tiny-process-library PUBLIC MSYS_PROCESS_USE_SH)
  endif()
else()
  target_sources(tiny-process-library PRIVATE process_unix.cpp)
endif()

find_package(Threads REQUIRED)

target_link_libraries(tiny-process-library PUBLIC ${CMAKE_THREAD_LIBS_INIT})
target_include_directories(tiny-process-library
  PUBLIC
  $<INSTALL_INTERFACE:include>
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
)

# Introduce variables:
# * CMAKE_INSTALL_LIBDIR
# * CMAKE_INSTALL_BINDIR
# * CMAKE_INSTALL_INCLUDEDIR
include(GNUInstallDirs)

set(config_install_dir "${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}")
set(generated_dir "${CMAKE_CURRENT_BINARY_DIR}/generated")
set(version_config "${generated_dir}/${PROJECT_NAME}ConfigVersion.cmake")
set(project_config "${generated_dir}/${PROJECT_NAME}Config.cmake")
set(TARGETS_EXPORT_NAME "${PROJECT_NAME}Targets")
set(namespace "${PROJECT_NAME}::")

install(TARGETS tiny-process-library
  EXPORT "${TARGETS_EXPORT_NAME}"
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
  ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
)

install(FILES process.hpp DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

include(CMakePackageConfigHelpers)

# Use:
# * PROJECT_VERSION
write_basic_package_version_file(
    "${version_config}" COMPATIBILITY SameMajorVersion
)

# Use:
# * TARGETS_EXPORT_NAME
# * PROJECT_NAME
configure_package_config_file(
    "Config.cmake.in"
    "${project_config}"
    INSTALL_DESTINATION "${config_install_dir}"
)

install(
    FILES "${project_config}" "${version_config}"
    DESTINATION "${config_install_dir}"
)

install(
    EXPORT "${TARGETS_EXPORT_NAME}"
    NAMESPACE "${namespace}"
    DESTINATION "${config_install_dir}"
)
