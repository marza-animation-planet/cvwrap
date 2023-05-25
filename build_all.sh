#!/bin/bash

echo "=== Building for Maya 2020..."
scons with-maya=2020 devtoolset=11

if [ $1 == "37" ] ; then

echo "=== Building for Maya 2022..."
scons37 with-maya=2022 devtoolset=11
echo "=== Building for Maya 2023..."
scons37 with-maya=2023 devtoolset=11
#echo "=== Building for Maya 2024..."
#scons37 with-maya=2024 devtoolset=11

else

echo "=== Building for Maya 2022..."
scons39 with-maya=2022 devtoolset=11
echo "=== Building for Maya 2023..."
scons39 with-maya=2023 devtoolset=11 
#echo "=== Building for Maya 2024..."
#scons39 with-maya=2024 devtoolset=11

fi
