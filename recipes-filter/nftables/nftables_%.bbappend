FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
    file://nftables.service \
    file://nftables.conf \
"

inherit systemd

do_install:append() {
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/nftables.service ${D}${systemd_system_unitdir}/nftables.service

    install -d ${D}${sysconfdir}
    install -m 0644 ${WORKDIR}/nftables.conf ${D}${sysconfdir}/nftables.conf
}

SYSTEMD_SERVICE:${PN} = "nftables.service"
SYSTEMD_AUTO_ENABLE:${PN} = "enable"
