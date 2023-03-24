##
## Author: Hank Anderson <hank@statease.com>
##

cmake_minimum_required(VERSION 2.8.5)

project(OpenBLAS4 C ASM)

set(OpenBLAS_MAJOR_VERSION 0)
set(OpenBLAS_MINOR_VERSION 3)
set(OpenBLAS_PATCH_VERSION 21.dev)

set(OpenBLAS_VERSION "${OpenBLAS_MAJOR_VERSION}.${OpenBLAS_MINOR_VERSION}.${OpenBLAS_PATCH_VERSION}")

# Adhere to GNU filesystem layout conventions
include(GNUInstallDirs)

include(CMakePackageConfigHelpers)

message(">>>>>> sub GNUInstallDir: ${GNUInstallDirs}")
AUX_SOURCE_DIRECTORY(. SRC_LIST)
#生成应用程序 hello
ADD_EXECUTABLE(main.x ${SRC_LIST})