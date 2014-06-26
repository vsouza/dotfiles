#!/bin/sh

##################
# Code # Color   #
##################
#  00  # Off     #
#  30  # Black   #
#  31  # Red     #
#  32  # Green   #
#  33  # Yellow  #
#  34  # Blue    #
#  35  # Magenta #
#  36  # Cyan    #
#  37  # White   #
##################

function msg {
	echo  "\033[0;37m$1\033[0m";
}

function msg_ok {
	echo  "➜\033[1;32m $1 ✔\033[0m";
}

function msg_run {
	echo  "➜\033[1;35m $1 $ $2\033[0m";
}

function msg_done {
	echo  "➜\033[1;37m $1 \033[0m";
}