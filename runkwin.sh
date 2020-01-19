#!/bin/bash

export KWIN_COMPOSE=O2ES
export GDK_BACKEND=x11
#export DISPLAY=:0
export LD_LIBRARY_PATH=/usr/work/qt5.11.3/lib
export QT_QPA_PLATFORM_PLUGIN_PATH=/usr/work/bin/
export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN
export LC_ALL="zh_CN.UTF-8"
cd /usr/work/bin/
./kwin_wayland --xwayland --drm --no-lockscreen startdde-wayland
