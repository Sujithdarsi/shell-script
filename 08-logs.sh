#!/bin/bash

ID=$(id -u)
 
echo "Script Name: $0"

VALIDATE(){

    if [ $1 -ne 0 ]
    then
        echo "Error : $2 .. Installation unsuccessful"
        exit 1
    else
        echo " $2 .. Installation successful"
    fi 
}

if [ $ID -ne 0 ]
then
    echo "Error : You are not root user,please run by root user"
    exit 1
else
    echo "You are root user"
fi

yum install mysql -y
 
VALIDATE $? "mysql"

yum install git -y

VALIDATE $? "git"


