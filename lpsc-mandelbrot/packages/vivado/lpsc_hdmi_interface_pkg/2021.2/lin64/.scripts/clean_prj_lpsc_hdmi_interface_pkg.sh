#!/bin/sh

##################################################################################
#                                 _             _
#                                | |_  ___ _ __(_)__ _
#                                | ' \/ -_) '_ \ / _` |
#                                |_||_\___| .__/_\__,_|
#                                         |_|
#
##################################################################################
#
# Company: hepia
# Author: Joachim Schmidt <joachim.schmidt@hesge.ch>
#
# Project Name: lpsc_hdmi_interface_pkg
# Target Device: digilentinc.com:nexys_video:part0:1.1 xc7a200tsbg484-1
# Tool version: 2021.2
# Description: Cleanup project directory
#
# Last update: 2022-02-28 09:06:05
#
##################################################################################

echo "> Cleanup project directory..."

PRJ_DIR=..

# Clean current directory
rm -rf ${PRJ_DIR}/.Xil/ 2> /dev/null

# Remove generated project directory
rm -rf ${PRJ_DIR}/lpsc_hdmi_interface_pkg/ 2> /dev/null

echo "> Done"

