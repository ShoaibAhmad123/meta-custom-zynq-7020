SUMMARY = "A startup service to run java"
DESCRIPTION = "This recipe installs a shell script to /usr/bin and sets up a systemd service."
LICENSE = "CLOSED"
SRC_URI = "file://start.sh \
           file://start.service"

inherit systemd

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/start.sh ${D}${bindir}/start.sh
    
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/start.service ${D}${systemd_system_unitdir}/start.service
}

SYSTEMD_SERVICE:${PN} = "start.service"
