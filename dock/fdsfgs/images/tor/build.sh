#
# build config
#
PACKAGES="net-vpn/tor"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    update_use 'sys-libs/ncurses' '+minimal'
    update_use net-vpn/tor +scrypt +seccomp +tor-hardening
    provide_package app-text/asciidoc
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
}
