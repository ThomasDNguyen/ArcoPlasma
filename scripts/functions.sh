#!/bin/bash

#: This is where all the functions for ArcoPlasma scripts are located.

#: Frequently used sed command to parse the package lists.
#:
#: Explanation:
#: "s/#.*//g" removes everything that comes after "#" -> you can add comments to the package lists.
#: "/^[[:space:]]*$/d" deletes all empty lines.
#: "s/^[[:space:]]*//" removes all leading spaces before package name.
#: "s/[[:space:]]*$//" removes all tailing spaces after  package name.
#: => Conclusion: "s/#.*//g ; /^[[:space:]]*$/d ; s/^[[:space:]]*// ; s/[[:space:]]*$//" helps the 
#: command sed parse package lists that contain comments, empty lines and empty spaces to get a 
#: nice list of packages (one each line, seperated by newline).
#:
parse_package_list()
{
	sed 's/#.*//g ; /^[[:space:]]*$/d ; s/^[[:space:]]*// ; s/[[:space:]]*$//' $1
}
