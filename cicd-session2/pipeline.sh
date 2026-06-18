#!/bin/bash

./build.sh 
if [ $? -ne 0 ]
then 
    echo "Build Failed"
    exit 1
fi 

./test.sh

if [ $? -ne 0 ]
then
    echo "Tests Failed"

    exit 1
fi 

./deploy.sh

echo "Pipeline Success"

