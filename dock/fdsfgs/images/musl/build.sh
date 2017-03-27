#
# build config
#
PACKAGES="sys-libs/musl"
#TIMEZONE="${BOB_TIMEZONE:-UTC}"
#EMERGE_BIN="emerge"

configure_bob() {
    echo $TIMEZONE > /etc/timezone
}

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    #cp /etc/timezone $EMERGE_ROOT/etc/
	    :
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
}
