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
    #useradd: PAM: Critical error - immediate abort
    mkdir -p "${_EMERGE_ROOT}"/{home/rtorrent,downloads/watch}
    chown -R rtorrent:rtorrent "${_EMERGE_ROOT}"/home/rtorrent
    chown -R rtorrent:rtorrent "${_EMERGE_ROOT}"/downloads
    chown -R sshd:sshd "${_EMERGE_ROOT}"/etc/ssh
    # make all services executable
    find "${_EMERGE_ROOT}/etc/service" -name run -exec chmod +x {} \;
}
