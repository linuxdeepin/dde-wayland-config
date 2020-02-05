#NOTE: must set QT_QPA_PLATFORM here, dbus activated services from DDE env will 
#need it. kwin_wayland_helper won't use it since kwin_wayland will reset it.
export QT_QPA_PLATFORM=xcb
exec dbus-launch kwin_wayland_helper
