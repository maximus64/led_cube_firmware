################################################################################
#
# SquareWave LEDCube Example Application
#
################################################################################

LEDCUBE_EXAMPLEAPPLICATIONS_VERSION = 0.1
LEDCUBE_EXAMPLEAPPLICATIONS_SITE = $(TOPDIR)/../exampleApplications
LEDCUBE_EXAMPLEAPPLICATIONS_SITE_METHOD = local
LEDCUBE_EXAMPLEAPPLICATIONS_DEPENDENCIES = ledcube_matrixserver
LEDCUBE_EXAMPLEAPPLICATIONS_LICENSE = GPL-3
LEDCUBE_EXAMPLEAPPLICATIONS_LICENSE_FILES = LICENSE

LEDCUBE_EXAMPLEAPPLICATIONS_CONF_OPTS += -DBUILD_CUBIE=true

$(eval $(cmake-package))
