################################################################################
#
# SquareWave LEDCube MatrixServer
#
################################################################################

LEDCUBE_MATRIXSERVER_VERSION = 0.1
LEDCUBE_MATRIXSERVER_SITE = $(TOPDIR)/../matrixserver
LEDCUBE_MATRIXSERVER_SITE_METHOD = local
LEDCUBE_MATRIXSERVER_DEPENDENCIES = boost protobuf eigen imlib2
LEDCUBE_MATRIXSERVER_LICENSE = GPL-3
LEDCUBE_MATRIXSERVER_LICENSE_FILES = LICENSE

LEDCUBE_MATRIXSERVER_CONF_OPTS += -DBUILD_CUBIE=true

$(eval $(cmake-package))
