#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="libreoffice"

# Check if package is installed
if rpm -q $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
else
    echo "$PACKAGE is NOT installed."
fi

echo "---------------------------------"

# Case statement that prints a one-line philosophy note based on the package name
case $PACKAGE in
    httpd|apache2) 
        echo "Apache: the web server that built the open internet" ;;
    mysql) 
        echo "MySQL: open source at the heart of millions of apps" ;;
    libreoffice) 
        echo "LibreOffice: Born from a community fork, proving the power of digital sovereignty and open standards." ;;
    firefox) 
        echo "Firefox: A nonprofit fighting for an open web and user privacy." ;;
    vlc) 
        echo "VLC Media Player: Plays anything - built by students in Paris, shaped by the world." ;;
    *) 
        echo "An important piece of the open-source ecosystem." ;;
esac
