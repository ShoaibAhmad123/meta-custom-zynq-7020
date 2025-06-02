FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " file://fragment.cfg"

KERNEL_CONFIG_FRAGMENTS:append = " fragment.cfg"