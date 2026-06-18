#!/bin/bash

echo "Testing..."

if [ -f artifact.tar ]
then
    echo "Test Passed"
    exit  0
else
    echo "Test failed"
    exit 1
fi 
