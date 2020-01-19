#!/bin/bash

.PHONY:all kelvinu-dm install preinstall

all:kelvinu-dm


kelvinu-dm:


install:
	mkdir -p ${DESTDIR}/usr/share/wayland-sessions/
	install deepin.desktop ${DESTDIR}/usr/share/wayland-sessions/
	mkdir -p ${DESTDIR}/usr/work/
	install runkwin.sh ${DESTDIR}/usr/work/ 
	mkdir -p ${DESTDIR}/usr/bin/
	install startdde-wayland ${DESTDIR}/usr/bin/

clean:


