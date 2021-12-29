#!/bin/bash

plf="$(sed s/scripts/package_list/ <<< $(pwd))"		# package_list			folder location.
remove="${plf}/removePackages.x86_64"			# "removePackages.x86_64"	file location.
plasma="${plf}/plasmaPackages.x86_64"			# "plasmaPackages.x86_64"	file location.
arco="${plf}/arcoPackages.x86_64"			# "arcoPackages.x86_64"		file location.
repo="${plf}/repoPackages.x86_64"			# "repoPackages.x86_64"		file location.
aur="${plf}/aurPackages.x86_64"				# "aurPackages.x86_64"		file location.
