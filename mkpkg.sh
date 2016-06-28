#!/bin/bash

sudo rm -Rf /usr/local/share/java.installer
sudo mkdir -p /usr/local/share/java.installer/
sudo cp "$2" /usr/local/share/java.installer/java.pkg
sudo pkggen -i com.oracle.java.installer  -v "$1" --postinstall scripts/postinstall files out.pkg
chmod 666 out.pkg
mv out.pkg "$3"
