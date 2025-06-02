FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append= " \
    file://jail.local \
    file://sshd-custom.conf \
    file://fail2ban.service \
"

do_install:append() {
    install -d ${D}${sysconfdir}/fail2ban
    install -m 0644 ${WORKDIR}/jail.local ${D}${sysconfdir}/fail2ban/jail.local

    install -d ${D}${sysconfdir}/fail2ban/filter.d
    install -m 0644 ${WORKDIR}/sshd-custom.conf ${D}${sysconfdir}/fail2ban/filter.d/sshd-custom.conf

    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/fail2ban.service ${D}${systemd_system_unitdir}/fail2ban.service
}