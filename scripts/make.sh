#!/bin/bash

# Precondition: you use CMAKE
#
# First thing you did was
# mkdir build
# cd build
# cmake ..
# make
#
# Now you can be in your src folder and just run this script.
# It will cd into build, will make, will cd back and will run the build using the current working directory (src)
#
# Assumption: If your files are into src/dir1/dir2/hello.c
#             Then your build output will be into build/src/dir1/dir2/hello.c
#
# If this is not the desired behavior, open PR
#
# Usage:
# ./make.sh ./myExecutable myParameter1 myParameter2
#
# You need to be in the src folder

if [ "$#" -eq 0 ]; then
    echo "Need at least one argument to run"
    exit 1
fi

src_dir=`pwd`

while [ -z "$(ls | grep build)" ]; do
    cd ..
done

base_dir=`pwd`

suffix=$(echo $src_dir | cut -c$((${#base_dir} + 2))-)

cd build
cd $suffix

bin_dir=`pwd`

make
MAKE_STATUS=$?

cd $src_dir

if [ $MAKE_STATUS -ne 0 ]; then
    exit $MAKE_STATUS
fi

cmd=${bin_dir}/$@
echo $cmd
eval $cmd

#TODO: need to redirect pipes as well
