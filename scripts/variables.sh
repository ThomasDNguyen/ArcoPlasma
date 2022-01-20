#!/bin/bash

#: This is where all the variables for ArcoPlasma scripts are located.

#: Package lists locations.
#:
#: Explanation:
#: "pwd" prints working directory.
#: "<<<" means "here-string" -> gives the leading program a pre-made string as input.
#: "sed s/scripts/package_list/" replaces the word "scripts" with "package_list".
#: => Conclusion: $(sed s/scripts/package_list/ <<< $(pwd)) gives us a flexible way of obtaining the
#: location of the package lists.
#:
plf="$(sed s/scripts/package_list/ <<< $(pwd))"		# package_list				folder location.

remove="${plf}/removePackages.x86_64"			# "removePackages.x86_64"		file location.
plasma="${plf}/plasmaPackages.x86_64"			# "plasmaPackages.x86_64"		file location.
arco="${plf}/arcoPackages.x86_64"			# "arcoPackages.x86_64"			file location.
repo="${plf}/repoPackages.x86_64"			# "repoPackages.x86_64"			file location.
aur="${plf}/aurPackages.x86_64"				# "aurPackages.x86_64"			file location.

pulseaudio="${plf}/pulseaudioPackages.x86_64"		# "pulseaudioPackages.x86_64"		file location.
pipewire="${plf}/pipewirePackages.x86_64"		# "pipewirePackages.x86_64"		file location.

print="${plf}/printPackages.x86_64"			# "printPackages.x86_64"		file location.
pwrmngmt="${plf}/pwrmngmtPackages.x86_64"		# "pwrmngmtPackages.x86_64		file location.
smb="${plf}/smbPackages.x86_64"				# "smbPackages.x86_64"			file location.
avahi="${plf}/avahiPackages.x86_64"			# "avahiPackages.x86_64"		file location.
ssh="${plf}/sshPackages.x86_64"				# "sshPackages.x86_64"			file location.
