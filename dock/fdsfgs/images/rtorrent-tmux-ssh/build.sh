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
    mkdir -p "${_EMERGE_ROOT}"/{home/rtorrent/session,downloads/watch}
    chown -R rtorrent:rtorrent "${_EMERGE_ROOT}"/home/rtorrent
    chown -R rtorrent:rtorrent "${_EMERGE_ROOT}"/downloads
    chown -R sshd:sshd "${_EMERGE_ROOT}"/etc/ssh
    cp /config/files/.rtorrent.rc /config/files/.bash_profile "${_EMERGE_ROOT}/home/rtorrent"
    cp -r /config/etc "${_EMERGE_ROOT}"
    # make all services executable
    find "${_EMERGE_ROOT}/etc/service" -name run -exec chmod +x {} \;
    install_suexec
    copy_gcc_libs
    ln -s ../../lib64/libgcc_s.so.1 "${_EMERGE_ROOT}"/usr/lib/libgcc_s.so.1
    ln -s ../../lib64/libstdc++.so.6 "${_EMERGE_ROOT}"/usr/lib/libstdc++.so.6
}
