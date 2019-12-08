SUMMARY = "A basic image with wifi and ssh"

include recipes-core/images/core-image-base.bb

IMAGE_FEATURES += "package-management splash"

CORE_OS = " \
    openssh openssh-keygen openssh-sftp-server \
"

WIFI_SUPPORT = " \
    crda \
    iw \
    linux-firmware-bcm43430\
    wpa-supplicant \
"

IMAGE_INSTALL += " \
    ${CORE_OS} \
    ${WIFI_SUPPORT} \
"

export IMAGE_BASENAME = "console-basic-image"
