# FindMyIO

The Linux kernel 5.19 update adds in the ability to find the physical locations of devices on your system, I have created a simple script that allows for easy traversal through the /sys/devices folder to see where things reside on your system. This script allows for seeing the entire system as a big wall of text, or if you wanted to you also have the ability to narrow down your search results into various directories.

Included is a makefile that allows for easy installation and removal of the findmyio script. "sudo make install" installs the findmyio script into the /usr/bin directory and gives it executable permisisons. Alternatively, "sudo make uninstall" removes the findmyio file from your /usr/bin directory.

It is recommended to run findmyio as 'sudo' so that the script is allowed to read all files in /sys/. If 'sudo' is not used, some files will return that permission was denied for cat for reading.
