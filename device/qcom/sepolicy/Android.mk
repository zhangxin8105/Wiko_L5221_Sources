# Board specific SELinux policy variable definitions
ifeq ($(call is-vendor-board-platform,QCOM),true)
BOARD_SEPOLICY_DIRS := \
       device/qcom/sepolicy \
       device/qcom/sepolicy/common \
       device/qcom/sepolicy/test \
       device/qcom/sepolicy/$(TARGET_BOARD_PLATFORM)

BOARD_SEPOLICY_UNION := \
       genfs_contexts \
       file_contexts \
       service_contexts \
       property_contexts \
       te_macros \
       device.te \
       vold.te \
       ueventd.te \
       file.te \
       property.te \
       untrusted_app.te \
       drmserver.te \
       adbd.te \
       app.te \
       cnd.te \
       system_server.te \
       mediaserver.te \
       msm_irqbalanced.te \
       qmuxd.te \
       netmgrd.te \
       port-bridge.te \
       atfwd.te \
       radio.te \
       smd_test.te \
       qmi_ping.te \
       qmi_test_service.te \
       irsc_util.te \
       netd.te \
       rild.te \
       diag.te \
       diag_test.te \
       audiod.te \
       service.te \
       system_app.te \
       thermal-engine.te \
       vm_bms.te \
       system_app.te \
       bluetooth.te \
       init_shell.te \
       mpdecision.te \
       perfd.te \
       mm-qcamerad.te \
       domain.te \
       init.te \
       time_daemon.te \
       rmt_storage.te \
       rfs_access.te \
       hvdcp.te \
       qti.te \
       qseecomd.te \
       mcStarter.te \
       keystore.te \
       ims.te \
       imscm.te \
       healthd.te \
       charger_monitor.te \
       surfaceflinger.te \
       mm-pp-daemon.te \
       wpa.te \
       hostapd.te \
       bootanim.te \
       zygote.te \
       mdm_helper.te \
       peripheral_manager.te \
       qcomsysd.te \
       usb_uicc_daemon.te \
       backup_service.te \
       adsprpcd.te \
       qlogd.te \
       ipacm.te \
       dpmd.te \
       ssr_setup.te \
       subsystem_ramdump.te \
       ssr_diag.te \
       sectest.te \
       location.te \
       location_app.te \
       seapp_contexts \
       logd.te \
       installd.te \
       wcnss_service.te \
       recovery.te \
       mmi.te \
       kernel.te \
       vold.te\
       sdcardd.te \
       dhcp.te \
       mediaserver_test.te \
       gestureservice.te \
       hbtp.te \
       platform_app.te \
       dtsconfigurator.te \
       wfdservice.te \
       seempd.te \
       dumpstate.te \
       nfc.te \
       ridl.te

# Compile sensor pilicy only for SSC targets
SSC_TARGET_LIST := apq8084
SSC_TARGET_LIST += msm8226
SSC_TARGET_LIST += msm8960
SSC_TARGET_LIST += msm8974
SSC_TARGET_LIST += msm8994

#ifeq ($(call is-board-platform-in-list,$(SSC_TARGET_LIST)),true)
BOARD_SEPOLICY_UNION += sensors.te
BOARD_SEPOLICY_UNION += sensors_test.te
#endif

#Tinno:CJ add uncrypt.te shell.te 
BOARD_SEPOLICY_UNION += uncrypt.te shell.te
#phone root  TN:peter
ifeq ($(TINNO_ROOT_SU),true)
BOARD_SEPOLICY_UNION += tinno_su.te 
endif
BOARD_SEPOLICY_UNION += servicemanager.te
endif
