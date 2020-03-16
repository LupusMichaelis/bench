#!/bin/bash

for compiler in \
    gcc \
    clang \

do
    for level in 1 2 3
    do
        echo ---------------------------------------
        exe=$compiler-loop-o$level
        echo ./$exe $level
        $compiler -o $exe loop.c -O$level
        time ./$exe
        echo
    done
done

for compiler in \
    g++ \
    clang++ \

do
    for level in 1 2 3
    do
        echo ---------------------------------------
        exe=$compiler-loop-o$level
        echo ./$exe $level
        $compiler -o $exe loop.cpp -O$level
        time ./$exe
        echo
    done
done

echo ---------------------------------------
echo Mono CSharp
mcs -out:loop.exe loop.cs
time ./loop.exe
echo

for js in \
    nodejs \
    rhino \

do
    echo ---------------------------------------
    echo $js
    time $js loop.js
    echo
done

for python in python2 python3
do
    for script in \
        loop.py \
        loop-range.py \
        loop-xrange.py \

    do
        echo ---------------------------------------
        echo $python ./$script
        time $python ./$script
        echo
    done
done
