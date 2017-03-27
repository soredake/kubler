#
# build config
#
PACKAGES="net-p2p/syncthing"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    update_keywords net-p2p/syncthing +~amd64 
    #echo "-gccgo" >> /etc/portage/profile/use.mask
    #update_use dev-lang/go +gccgo
    #update_use sys-devel/gcc +graphite +go
    #update_keywords =sys-devel/gcc-5.4.0-r2::musl +~amd64
}


#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    cd ${EMERGE_ROOT}
    rm -rf usr/share/{udhcpc,zoneinfo} etc/{init,conf,logrotate,modprobe}.d {var,usr}/lib/systemd
}
