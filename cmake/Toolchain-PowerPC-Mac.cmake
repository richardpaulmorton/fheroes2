# CMake toolchain file for cross-compiling from Windows to Mac OS X 10.4 (PowerPC)
# You will need a cross-compiler toolchain like 'powerpc-apple-darwin8-g++'
# and a copy of the Mac OS X 10.4 SDK.

set(CMAKE_SYSTEM_NAME Darwin)
set(CMAKE_SYSTEM_VERSION 8.0) # OS X 10.4 Tiger
set(CMAKE_SYSTEM_PROCESSOR powerpc)

# Specify the cross-compiler.
# Update these paths to point to your actual cross-compiler toolchain binaries.
set(CMAKE_C_COMPILER powerpc-apple-darwin8-gcc)
set(CMAKE_CXX_COMPILER powerpc-apple-darwin8-g++)

# Specify the path to the Mac OS X 10.4 SDK.
# Update this path to where you extracted the SDK.
set(CMAKE_OSX_SYSROOT "/opt/cross/powerpc-apple-darwin8/SDKs/MacOSX10.4u.sdk" CACHE PATH "Path to Mac OS X 10.4 SDK")

# Force the architecture to PowerPC (G4).
set(CMAKE_OSX_ARCHITECTURES "ppc" CACHE STRING "Build architecture for macOS")

# Enable AltiVec.
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -maltivec -mabi=altivec" CACHE STRING "" FORCE)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -maltivec -mabi=altivec" CACHE STRING "" FORCE)

# Adjust search behavior to look in the target environment first.
set(CMAKE_FIND_ROOT_PATH "/opt/cross/powerpc-apple-darwin8")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
