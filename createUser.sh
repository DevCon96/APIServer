#! /bin/bash

# This script will call createUser API

name=$1
type=$2
username=$3
password=$4

apiURL="http://localhost:8080/"
createUserAPI="createUser"
createUserWithCredentialsAPI=" createUserWithCredentials"


echo "-- Calling createUser --"
if [[ $# = 0 ]]; then
	echo "-- Hit test --"
	request="${apiURL}${createUserAPI}"
	echo $request
	curl -X POST $request
elif [[ $# = 4 ]]; then
	echo "-- Credentials passed --"
	request="${apiURL}${createUserWithCredentialsAPI}?name=${name}&type=${type}&username=${username}&password=${password}"
	echo $request
	curl -X POST $request

else

	echo "Error : Invalid arguments required ./createUser.sh name type username password"
fi 


#echo $request
#curl $request
