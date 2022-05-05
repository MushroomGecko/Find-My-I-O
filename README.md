# FindMyIO

In preparation for the Linux kernel 5.19 update which adds in the ability to find the physical locations of devices on your system, I have created a simple script that allows for easy traversal through the /sys/ folder to see where things reside on your system. This script allows for seeing the entire system as a big wall of text, or if you wanted to you also have the ability to narrow down your search results into various directories. 

Currently, the "type" attribute is a placeholder for whatever variable name will be used to find the physical location of a device on your system come the 5.19 kernel.

Included is a makefile that allows for easy installation and removal of the findmyio script. "sudo make install" installs the findmyio script into the /usr/bin directory and gives it executable permisisons. Alternatively, "sudo make uninstall" removes the findmyio file from your /usr/bin directory.
