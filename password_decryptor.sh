#!/bin/bash

d_password=$1
secret_key=$JASYPT_ENCRYPTOR_PASSWORD
build=jasypt-1.9.3.jar
values=`java -cp $build org.jasypt.intf.cli.JasyptPBEStringDecryptionCLI password=$secret_key input=$1 algorithm=PBEWithMD5AndDES`
#echo $values
echo $values | awk -F'OUTPUT---------------------- ' '{print $NF}'

