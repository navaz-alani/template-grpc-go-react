#!/bin/bash -x

printf "Enter username (for go module): ";
read username;
printf "Enter project name (no spaces): ";
read proj_name;

mv "pb/<project-name>.proto" "pb/${proj_name}.proto"

# Makefile: set go binary name, proto defs path
# pb/${proj_name}.proto: set proto pkg path
# nginx.conf: set sub-domain
# docker-compose.yml: set container directory
# go.mod: set module name
# README.md: set project name

sed -i "" -e "s/<project-name>/${proj_name}/" Makefile "pb/${proj_name}.proto" nginx.conf docker-compose.yml go.mod main.go README.md;
sed -i "" -e "s/<username>/${username}/" "pb/${proj_name}.proto" docker-compose.yml go.mod main.go;
sed -i "" -e "s/<ProjectName>/$(printf "${proj_name}" | perl -pe 's/(^|-)(\w)/\U$2/g')/" main.go;
