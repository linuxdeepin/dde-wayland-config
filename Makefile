#!/bin/bash

.PHONY:all kelvinu-dm install preinstall

all:kelvinu-dm


kelvinu-dm:


install:
	mkdir -p ${DESTDIR}/usr/share/wayland-sessions/
	mkdir -p ${DESTDIR}/usr/work/
	mkdir -p ${DESTDIR}/usr/bin/
	install deepin.desktop ${DESTDIR}/usr/share/wayland-sessions/
	install runkwin.sh ${DESTDIR}/usr/work/ 
	install startdde-wayland ${DESTDIR}/usr/bin/

