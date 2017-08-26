#
# build config
#
PACKAGES="app-shells/bash dev-db/postgresql"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    unprovide_package app-shells/bash
    mask_package '=dev-libs/libpcre-8.40*'
    :
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    install_gosu
    uninstall_package app-shells/bash
    mkdir /backup
}
