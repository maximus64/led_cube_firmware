################################################################################
#
# rpi-rgb-led-matrix
#
################################################################################

RPI_RGB_LED_MATRIX_VERSION = 902f4f597cfcc8a0e4ed2abf0924985235c64452
RPI_RGB_LED_MATRIX_SITE = $(call github,hzeller,rpi-rgb-led-matrix,$(RPI_RGB_LED_MATRIX_VERSION))
RPI_RGB_LED_MATRIX_LICENSE = GPL-2.0+
RPI_RGB_LED_MATRIX_FILES = COPYING

define RPI_RGB_LED_MATRIX_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) CC="$(TARGET_CC)" CXX="$(TARGET_CXX)" -C $(@D)
endef

define RPI_RGB_LED_MATRIX_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -D $(@D)/examples-api-use/demo \
		$(TARGET_DIR)/usr/bin/rpi-rgb-led-matrix-demo
endef

$(eval $(generic-package))
