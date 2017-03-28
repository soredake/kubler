#
# build config
#
_packages="=sys-devel/gcc-5.4.0-r3 sys-devel/distcc"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    update_use sys-devel/gcc +graphite
    update_keywords =sys-devel/gcc-5.4.0-r3 +~amd64
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
}
