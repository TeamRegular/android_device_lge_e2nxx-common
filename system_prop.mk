# Art
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-flags=--no-watch-dog

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=false \
    ro.qc.sdk.audio.fluencetype=fluence \
    tunnel.audio.encode=true
    use.voice.path.for.pcm.voip=true

# Camera
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# CNE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.cne.feature=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1 \
    persist.hwc.mdpcomp.enable=true \
    ro.opengles.version=196608 \
    ro.sf.lcd_density=240

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=0 \
    persist.loc.nlp_name=com.qualcomm.services.location \
    ro.gps.agps_provider=1 \
    ro.pip.gated=0 \
    ro.qc.sdk.izat.premium_enabled=0 \
    ro.qc.sdk.izat.service_mask=0x0

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.qcom_parser=37491 \
    mm.enable.smoothstreaming=true \
    mm.enable.vsync.render=1 \
    media.aac_51_output_enabled=true \
    qcom.hw.aac.encoder=true

# NITZ
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3=""

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.min_freq_0=787200 \
    ro.vendor.extension_library=/vendor/lib/libqti-perfd-client.so

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.netmgrd.qos.enable=false \
    persist.radio.add_power_save=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.msgtunnel.start=false \
    ro.telephony.ril_class=LgeLteRIL \
    ro.use_data_netmgrd=true

# Sensor debugging
# Valid settings (and presumably what they mean):
#   0      - off
#   1      - all the things
#   V or v - verbose
#   D or d - debug
#   E or e - errors
#   W or w - warnings
#   I or i - info
#
PRODUCT_PROPERTY_OVERRIDES += \
    debug.qualcomm.sns.daemon=e \
    debug.qualcomm.sns.hal=e \
    debug.qualcomm.sns.libsensor1=e \
    ro.qc.sdk.sensors.gestures=false

# Set max background services
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.max_starting_bg=32

# Time
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true
