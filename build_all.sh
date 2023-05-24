#!/usr/bin/env sh

#./docker-builder/build_project.sh $PATH_TO_SOURCE_CODE "↓↓↓ build command ↓↓↓" 

echo "===Building for Maya 2020..."
scons with-maya=2020 devtoolset=11
echo "===Building for Maya 2022..."
scons37 with-maya=2022 devtoolset=11
echo "===Building for Maya 2023..."
scons39 with-maya=2023 devtoolset=11
echo "===Building for Maya 2024..."
scons39 with-maya=2024 devtoolset=11