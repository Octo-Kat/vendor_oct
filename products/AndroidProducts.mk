# Copyright (C) 2014 Team-OctOS
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

ifeq (oct_d2lte,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_d2lte.mk
endif
ifeq (oct_d2att,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_d2att.mk
endif
ifeq (oct_d2cri,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_d2cri.mk
endif
ifeq (oct_d2csp,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_d2mtr.mk
endif
ifeq (oct_d2spr,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_d2spr.mk
endif
ifeq (oct_d2spi,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_d2spi.mk
endif
ifeq (oct_d2tmo,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_d2tmo.mk
endif
ifeq (oct_d2usc,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_d2usc.mk
endif
ifeq (oct_d2vzw,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_d2vzw.mk
endif
ifeq (oct_epicmtd,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_epicmtd.mk
endif
ifeq (oct_jflte,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_jflte.mk
endif
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
ifeq (oct_jflterefreshspr,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_jflterefreshspr.mk
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
ifeq (oct_m7att,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_m7att.mk
endif
ifeq (oct_m7spr,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_m7spr.mk
endif
ifeq (oct_m7tmo,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_m7tmo.mk
endif
ifeq (oct_m7ul,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_m7ul.mk
endif
ifeq (oct_m7vzw,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_m7vzw.mk
endif
ifeq (oct_hammerhead,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_hammerhead.mk
endif
ifeq (oct_hlte,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_hlte.mk
endif
ifeq (oct_mako,$(TARGET_PRODUCT))
    PRODUCT_MAKEFILES += $(LOCAL_DIR)/oct_mako.mk
endif
