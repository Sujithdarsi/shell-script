#!/bin/bash

ID=$(id -u)
 
TIMESTAMP=$(date +%F-%H-%M-%S)

R=\e[31m
G=\e[32m
N=\e[0m

LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){

    if [ $1 -ne 0 ]
    then
        echo -e "Error : $2 .. $R Installation unsuccessful $N"
        exit 1
    else
        echo -e " $2 .. $G Installation successful $N"
    fi 
}

if [ $ID -ne 0 ]
then
    echo "Error : You are not root user,please run by root user"
    exit 1
else
    echo "You are root user"
fi

yum install mysql -y &>> $LOGFILE
 
VALIDATE $? "mysql"

yum install git -y &>> $LOGFILE

VALIDATE $? "git"


