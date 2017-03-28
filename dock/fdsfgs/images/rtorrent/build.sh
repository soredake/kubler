#
# build config
#
_packages="net-p2p/rtorrent"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    update_use 'sys-libs/ncurses' '+minimal'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    useradd -s /bin/sh rtorrent
    mkdir -p $_EMERGE_ROOT/{home/rtorrent,downloads/watch}
    chown -R rtorrent:rtorrent $_EMERGE_ROOT/home/rtorrent $_EMERGE_ROOT/downloads
    # make all services executable
    #chmod +x $(find $_EMERGE_ROOT/etc/service -name run)
    #ln -s /etc/s6_finish_default $_EMERGE_ROOT/etc/service/rtorrent/finish
}
