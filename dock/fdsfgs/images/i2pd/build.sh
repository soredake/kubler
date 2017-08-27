#
# build config
#
_packages="net-vpn/i2pd"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    add_overlay libressl https://github.com/gentoo/libressl
    update_keywords 'dev-libs/boost::libressl' '+**'
    update_keywords net-vpn/i2pd +~amd64
    update_use net-vpn/i2pd +cpu_flags_x86_aes +i2p-hardening
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
}
