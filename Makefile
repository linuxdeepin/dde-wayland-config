#!/bin/bash

.PHONY:all kelvinu-dm install preinstall

all:kelvinu-dm


kelvinu-dm:


install:
	mkdir -p ${DESTDIR}/usr/share/xsessions/
	install deepin.desktop ${DESTDIR}/usr/share/xsessions/
	mkdir -p ${DESTDIR}/usr/bin/
	install startdde-wayland ${DESTDIR}/usr/bin/
	install runkwin.sh ${DESTDIR}/usr/bin/
	install kwin_wayland_helper ${DESTDIR}/usr/bin/

clean:


