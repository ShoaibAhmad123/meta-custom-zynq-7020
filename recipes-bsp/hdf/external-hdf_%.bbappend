FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

HDF_BASE:vuhf-sdr = "file://"
HDF_PATH:vuhf-sdr = "system_top.xsa"

MACHINE_BASE = "${@'-'.join(MACHINE.rsplit('-')[-2:])}"
do_deploy:prepend() {
        if [ "${MACHINE_BASE}" != "${MACHINE}" ] &&
           [ -d ${WORKDIR}/git/${MACHINE_BASE} ]; then
                ln -sf ${MACHINE_BASE} ${WORKDIR}/git/${MACHINE}
        fi
}