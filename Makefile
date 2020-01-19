#!/bin/bash

.PHONY:all kelvinu-dm install preinstall

all:kelvinu-dm


kelvinu-dm:deepin.desktop runkwin.sh startdde-wayland


install:preinstall
	cp ./deepin.desktop /usr/share/xsessions/; 
	cp ./runkwin.sh /usr/work/; 
	cp ./startdde-wayland /usr/bin/

preinstall:
	@if [ ! -d /usr/work ]; then \
		mkdir -p /usr/work; \
		fi
