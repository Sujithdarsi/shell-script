#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "Error : You are not root user,please run by root user"
    exit 1
else
    echo "You are root user"
fi