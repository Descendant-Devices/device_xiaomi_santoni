#
# Copyright (C) 2020 Descendant
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

$(call inherit-product, device/xiaomi/santoni/full_santoni.mk)
$(call inherit-product, vendor/descendant/config/common_full_phone.mk)

PRODUCT_DEVICE := santoni
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4
PRODUCT_NAME := descendant_santoni
BOARD_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

# QCom Proprietary
include vendor/qcom/common/perf/qti-perf.mk
include vendor/qcom/common/av/qti-av.mk

# GApps
SUPPORTS_NATIVE_GOOGLE_CAMERA := NO
SUPPORTS_GOOGLE_WALLS := NO
SUPPORTS_GOOGLE_NEW_ASSISTANT := YES
SUPPORTS_GOOGLE_ASSISTANT_EXTRA_RESOURCES := YES
SUPPORTS_PIXEL_SETUP_OVERLAYS := YES
PIXEL_SETUP_OVERLAY_TYPE := PIXELONE
TARGET_INCLUDE_OWN_CAMERA := NO
TARGET_FACE_UNLOCK_SUPPORTED := true

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
	
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="santoni-user 7.1.2 N2G47H V9.5.10.0.NAMMIFD release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "Xiaomi/santoni/santoni:7.1.2/N2G47H/V9.5.10.0.NAMMIFD:user/release-keys"
