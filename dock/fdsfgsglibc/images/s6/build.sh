#
# build config
#
PACKAGES="sys-apps/s6 app-admin/entr"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    :
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    # s6 folders
    mkdir -p $EMERGE_ROOT/etc/service/.s6-svscan
}
