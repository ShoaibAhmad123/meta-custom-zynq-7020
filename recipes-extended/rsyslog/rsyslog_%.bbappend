FILESEXTRAPATHS:prepend := "${THISDIR}/rsyslog:"

SRC_URI:append = " file://rsyslog.service"

do_install:append() {
     install -m 644 ${WORKDIR}/rsyslog.service ${D}${systemd_system_unitdir}
}
