# Copyright (C) 2013 OctOS
#
# Licensed under the Apurityche License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apurityche.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifeq (oct_jflteatt,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_jflteatt.mk
endif
ifeq (oct_jfltecan,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_jfltecan.mk
endif
ifeq (oct_jfltecri,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_jfltecri.mk
endif
ifeq (oct_jfltecsp,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_jfltecsp.mk
endif
ifeq (oct_jfltespr,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_jfltespr.mk
endif
ifeq (oct_jfltetmo,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_jfltetmo.mk
endif
ifeq (oct_jflteusc,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_jflteusc.mk
endif
ifeq (oct_jfltevzw,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_jfltevzw.mk
endif
ifeq (oct_jfltexx,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_jfltexx.mk
endif
