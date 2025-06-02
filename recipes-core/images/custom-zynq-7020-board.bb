SUMMARY = "Image for master board of very high frequency software defines army radio"

IMAGE_INSTALL = "packagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL}"

IMAGE_LINGUAS = " "

LICENSE = "MIT"

inherit core-image extrausers

PASSWD = "zync7020"

EXTRA_USERS_PARAMS = "\
    usermod -p '${PASSWD}' root; \
"

IMAGE_INSTALL:append = " packagegroup-core-boot \
    nano \
    i2c-tools \
    openssh \
    java-11 \
    bash \
    htop \
    curl \
    startup-script \
    make \
    util-linux \
    shadow \
    screen \
    nftables \
    mtd-utils \
    e2fsprogs \
    dosfstools \
    coreutils \
    binutils \
    python3-fail2ban \
    suricata \
    rsyslog \
    "

IMAGE_ROOTFS_SIZE ?= "8192"
IMAGE_ROOTFS_EXTRA_SPACE:append = "${@bb.utils.contains("DISTRO_FEATURES", "systemd", " + 4096", "", d)}"
