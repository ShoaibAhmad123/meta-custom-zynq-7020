SUMMARY = "Java version 11 installation"
DESCRIPTION = "Java development kit 11"
LICENSE = "CLOSED"

SRC_URI = "file://jdk11.0.11.tar.xz;unpack=0"

S = "${WORKDIR}"

# Skip certain QA checks
INSANE_SKIP:${PN} += "ldflags"
INSANE_SKIP = "32bit-time"

# Runtime dependencies
RDEPENDS:${PN} += "libx11 libasound glibc glibc-thread-db libgcc libstdc++"
# DEPENDS += "libx11 alsa-lib"

# Exclude from shared libraries
EXCLUDE_FROM_SHLIBS = "1"

do_install() {
    install -d ${D}/opt
    tar -xJf ${S}/jdk11.0.11.tar.xz -C ${D}/opt
}

# Specify files to be packaged
FILES:${PN} += "/etc/profile.d/custom_java.sh"
FILES:${PN} += "/opt"

pkg_postinst:${PN} () {
    cat <<EOF > $D/etc/profile.d/custom_java.sh
export PATH=\$PATH:/opt/jdk11.0.11/bin
EOF
}