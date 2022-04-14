#!/bin/sh
# This is generator script.
#Creates output directory.
#Compiles Source file,Executes the monitoring_system code  and genrates log1.txt

# Check if the command line is empty or not
if [ ! -z "$1" ]&& [ "$1" != " " ];then

#create directory specified by the user
mkdir $1
echo "Compling ..."

#compile the source code
g++ monitoring_system.cpp
echo "Successfully Compiled!"

#Execute the code and generate the logs 
./a.out $1/data_logs.txt
echo "Logs are generatad in $1 directory"
else
echo "Please Enter Valid path for Data."
fi

