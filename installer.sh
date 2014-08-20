#!/usr/bin/env bash


usage()
{
	printf "##### USAGE #####\n\n./installer.sh [some.manifest|some.package]\n\n##### USAGE #####\n"
	
}

read_package()
{
	echo "read_package"
}


read_manifest()
{
	echo "read_manifest"
}


determine_install_type()
{
	echo $1
}


if [[ -z "$1" ]]; then 
	usage
fi

determine_install_type $1