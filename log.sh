#!/bin/sh


function msg {
	echo  "\033[0;37m$1\033[0m";
}

function msg_ok {
	echo  "\033[1;32m $1 \033[0m";
}

function msg_prompt {
	echo  "➜\033[1;33m $1 \033[0m";
}
function msg_nested_done {
	echo  "   * \033[0;37m $1 \033[0m";
}
function msg_category {
	echo  "   * \033[0;33m $1 \033[0m";
}

function msg_nested_lvl_done {
	echo  "       ➜ \033[0;37m $1 \033[0m";
}

function msg_config {
	echo  "➜ \033[1;36m $1 ✔\033[0m";
}

function msg_run {
	echo  "➜\033[1;35m $1  $2\033[0m";
}

function msg_done {
	echo  "✔ \033[1;37m $1 \033[0m";
}
