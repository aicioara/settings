#!/bin/bash

if [ $# -eq 0 ]
then
    echo "Supply the name of the main method"
    exit 1
fi


WARNING_FLAGS="-Werror -Wall -Wextra -pedantic"
WARNING_FLAGS=""
#SILENCE_FLAGS="-Wno-unused-variable -Wno-unused-parameter -Wno-unused-but-set-variable"
PERFORMANCE_FLAGS=""
PERFORMANCE_FLAGS="-O3 -funroll-loops -fprefetch-loop-arrays"
DEBUG_FLAGS=""
DEBUG_FLAGS="-g"

MAIN_FILE=$1
FILES="Core.cpp"
OUT_FILE=$(echo ${MAIN_FILE%.*})
OUT_FILE="$OUT_FILE.out"

MATH="-lm"
OPENCV="`pkg-config --cflags --libs opencv`"

LIBRARIES="$MATH $OPENCV"

command="g++ -DCMD $DEBUG_FLAGS $WARNING_FLAGS $SILENCE_FLAGS $PERFORMANCE_FLAGS $MAIN_FILE $FILES $LIBRARIES -o $OUT_FILE"

eval $command

if [ $? -eq 0 ]; then
    cp $OUT_FILE a.out
fi
