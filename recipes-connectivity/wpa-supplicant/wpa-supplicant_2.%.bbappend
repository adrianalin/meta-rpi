# Extend the base recipe search path to $HERE/init-ifupdown
FILESEXTRAPATHS_prepend := "${THISDIR}/wpa-supplicant:"

do_install_append () {
	install -m 0644 ${WORKDIR}/wpa_supplicant.conf ${D}/${sysconfdir}/
}
