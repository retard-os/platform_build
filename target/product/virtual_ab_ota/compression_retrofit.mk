#
# Copyright (C) 2020 The Android Open-Source Project
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

PRODUCT_VENDOR_PROPERTIES += ro.virtual_ab.compression.enabled=true

# For devices that are not GKI-capable (eg do not have vendor_boot),
# snapuserd.ramdisk is included rather than snapuserd.vendor_ramdisk.
# When using virtual_ab_ota_compression_retrofit.mk, either
# virtual_ab_ota.mk or virtual_ab_ota_retrofit.mk must be inherited
# as well.
PRODUCT_PACKAGES += \
    snapuserd.ramdisk \
    snapuserd \
    snapuserd.recovery
