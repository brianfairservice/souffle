#!/bin/bash

set -e
set -x


MSYS_NO_PATHCONV=1
MSYS2_ARG_CONV_EXCL="*;./test-script.sh;./bootstrap"

#curl.exe -L https://aka.ms/wsl-ubuntu-1804 -o ubuntu-1804.appx
#unzip ubuntu-1804.appx
#./ubuntu1804.exe install --root

choco install wsl-ubuntu-1804

wsl -- pwd
wsl --help
wsl -- ls -l
wsl -- file bootstrap
wsl which sh
wsl bash -c "apt-get update -y"
wsl bash -c "apt-get install -y autoconf bison build-essential flex libffi-dev libncurses5-dev libtool lsb-release mcpp swig"

wsl bash -c "./bootstrap"

