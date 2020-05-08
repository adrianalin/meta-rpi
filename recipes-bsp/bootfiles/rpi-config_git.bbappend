do_deploy_append() {
	if [ "${PITFT35r}" = "1" ]; then
		echo "hdmi_force_hotplug=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
		echo "hdmi_cvt=320 480 60" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
		echo "hdmi_group=2" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
		echo "hdmi_mode=87" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
		sed -i 's/dtoverlay=pitft35-resistive,rotate=90,speed=42000000,fps=20/dtoverlay=pitft35-resistive,rotate=0,speed=32000000,fps=60/g' ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
		echo "# enable pwm on GPIO_18 (for kernel 4.19) for backlight control" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
		echo "dtoverlay=pwm" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
	fi
}
