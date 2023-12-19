#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "Error : You are not root user,please run by root user"
    exit 1
else
    echo "You are root user"
fi

yum install mysqll -y


if [ $? -ne 0 ]
then
    echo "Error : Installation unsuccessful"
    exit 1
else
    echo "Installation successful"
fi