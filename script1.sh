#!/bin/bash
# Script 1: System Identity Report
# Author: Aadrit Rowmuria | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Aadrit Rowmuria"
SOFTWARE_CHOICE="LibreOffice"

# --- System info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)

# Extracting distro name from os-release
DISTRO=$(cat /etc/os-release | grep '^PRETTY_NAME=' | cut -d '"' -f 2)
CURRENT_DATE=$(date '+%A, %d %B %Y %T')
LICENSE_MSG="This operating system is built on the Linux kernel, licensed under GPL v2."

# --- Display ---
echo "================================="
echo "Open Source Audit — $STUDENT_NAME"
echo "================================="
echo "Distro  : $DISTRO"
echo "Kernel  : $KERNEL"
echo "User    : $USER_NAME"
echo "Uptime  : $UPTIME"
echo "Date    : $CURRENT_DATE"
echo "---------------------------------"
echo "OS License Note: $LICENSE_MSG"
echo "================================="
