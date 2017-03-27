#
# build config
#
PACKAGES="net-p2p/rtorrent"

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
    mkdir -p $EMERGE_ROOT/{home/rtorrent,downloads/watch}
    chown -R rtorrent:rtorrent $EMERGE_ROOT/home/rtorrent $EMERGE_ROOT/downloads
    # make all services executable
    #chmod +x $(find $EMERGE_ROOT/etc/service -name run)
    #ln -s /etc/s6_finish_default $EMERGE_ROOT/etc/service/rtorrent/finish
}
