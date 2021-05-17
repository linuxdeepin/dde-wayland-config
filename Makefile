#!/bin/bash

.PHONY:all kelvinu-dm install preinstall
GOPATH := /usr/share/gocode
GOPATH_DIR = gopath
GOBUILD = go build -v


all:kelvinu-dm


kelvinu-dm: dde-setHidden

dde-setHidden:
	env GOPATH="${CURDIR}/${GOPATH_DIR}:${GOPATH}"  ${GOBUILD} -o Xdeepin setHidden.go

install::
	mkdir -p ${DESTDIR}/usr/share/wayland-sessions/
	install deepin.desktop ${DESTDIR}/usr/share/wayland-sessions/
	install deepin-Xwayland.desktop ${DESTDIR}/usr/share/wayland-sessions/
	mkdir -p ${DESTDIR}/usr/bin/
	install startdde-wayland ${DESTDIR}/usr/bin/
	install runkwin.sh ${DESTDIR}/usr/bin/
	install kwin_wayland_helper ${DESTDIR}/usr/bin/
	install dde_update_dbus_env ${DESTDIR}/usr/bin/
	mkdir -p ${DESTDIR}/var/lib/lastore/
	install config.json ${DESTDIR}/var/lib/lastore/
	install startdde-x11 ${DESTDIR}/usr/bin/
	install runkwin-x11.sh ${DESTDIR}/usr/bin/
	install kwin_wayland-x11_helper ${DESTDIR}/usr/bin/
	install dde_update_dbus_env ${DESTDIR}/usr/bin/
	chown root Xdeepin
	chgrp root Xdeepin
	install -Dm4755 Xdeepin ${DESTDIR}/usr/bin

clean:


