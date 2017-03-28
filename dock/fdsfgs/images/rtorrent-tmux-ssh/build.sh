#
# build config
#
_packages="net-p2p/rtorrent app-misc/tmux net-misc/openssh"
BOB_INSTALL_BASELAYOUT=true

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    update_use 'sys-libs/ncurses' '+minimal'
    useradd -l -m -s /bin/sh rtorrent
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    #useradd -s /bin/sh rtorrent
    #useradd: PAM: Critical error - immediate abort
    #useradd -l -m -s /bin/sh rtorrent
    mkdir -p "${_EMERGE_ROOT}"/{home/rtorrent,downloads/watch}
    chown -R rtorrent:rtorrent "${_EMERGE_ROOT}"/home/rtorrent 
    chown -R rtorrent:rtorrent "${_EMERGE_ROOT}"/downloads
    # make all services executable
    #chmod +x $(find ${_EMERGE_ROOT}/etc/service -name run)
    #ln -s /etc/s6_finish_default $_EMERGE_ROOT/etc/service/rtorrent-tmux/finish
}
