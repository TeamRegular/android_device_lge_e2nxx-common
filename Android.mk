#
# Copyright 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter e2nac e2nam e2nas e2nav, $(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

define vfatfilename
$(foreach f,$(1),$(shell echo $(f) | \
    awk 'BEGIN { FS="."; } { printf("%s.%s", substr($$1,1,8), $$2); }'))
endef

# Create a link for the WCNSS config file, which ends up as a writable
# version in /data/misc/wifi
$(shell mkdir -p $(TARGET_OUT)/etc/firmware/wlan/prima; \
    ln -sf /data/misc/wifi/WCNSS_qcom_cfg.ini \
        $(TARGET_OUT)/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini)

endif
