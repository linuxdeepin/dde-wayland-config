#!/bin/bash

.PHONY:all kelvinu-dm install preinstall

all:kelvinu-dm


kelvinu-dm:


install:
	mkdir -p ${DESTDIR}/usr/share/wayland-sessions/
	install deepin.desktop ${DESTDIR}/usr/share/wayland-sessions/
	mkdir -p ${DESTDIR}/usr/bin/
	install startdde-wayland ${DESTDIR}/usr/bin/
	install runkwin.sh ${DESTDIR}/usr/bin/
	install kwin_wayland_helper ${DESTDIR}/usr/bin/
	install dde_update_dbus_env ${DESTDIR}/usr/bin/
       install config.json ${DESTDIR}/var/lib/lastore/

clean:


