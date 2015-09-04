#!/bin/bash

user=$1
src=$2
target=$3

echo "User is box account (email address); source is folder/file relative to user's home dir on box; target is relative to current directory."
echo ""
echo "user:   " $user
echo "src:    " $src
echo "target: " $target

curl -1 -v --disable-epsv --ftp-skip-pasv-ip -u $user --ftp-ssl ftps://ftp.box.com:990/$src > $target
