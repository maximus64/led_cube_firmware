################################################################################
#
# SquareWave LEDCube MatrixServer
#
################################################################################

LEDCUBE_MATRIXSERVER_VERSION = 0.1
LEDCUBE_MATRIXSERVER_SITE = /work/port/matrixserver
LEDCUBE_MATRIXSERVER_SITE_METHOD = local
LEDCUBE_MATRIXSERVER_DEPENDENCIES = boost protobuf eigen imlib2
LEDCUBE_MATRIXSERVER_LICENSE = GPL-3
LEDCUBE_MATRIXSERVER_LICENSE_FILES = LICENSE

LEDCUBE_MATRIXSERVER_CONF_OPTS += -DX_DISPLAY_MISSING=1

$(eval $(cmake-package))
