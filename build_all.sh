#!/bin/bash

export PYTHONPATH=$PYTHONPATH:`pwd`

# Required to specify project root so scons will build targets with outputs outside their usual build directory
# https://scons.org/doc/production/HTML/scons-user/ch11.html
ROOT_DIR=`pwd`

echo "=== Building for Maya 2020..."
scons with-maya=2020 devtoolset=11 $ROOT_DIR
echo "=== Building for Maya 2022..."
rm -rf excons.cache
scons37 with-maya=2022 devtoolset=11 $ROOT_DIR
echo "=== Building for Maya 2023..."
rm -rf excons.cache
scons39 with-maya=2023 devtoolset=11 $ROOT_DIR
echo "=== Building for Maya 2024..."
rm -rf excons.cache
scons310 with-maya=2024 devtoolset=11 $ROOT_DIR
