#
# build config
#
_packages="net-misc/openssh"
BOB_INSTALL_BASELAYOUT=true

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    # https://stackoverflow.com/questions/2150882/how-to-automatically-add-user-account-and-password-with-a-bash-script
    # @TODO move this to runtime?
    useradd -l -M -d /torrents -s /bin/sh -p "$(openssl passwd 123)" ssh
    #echo ssh:1234 | chpasswd
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    install_suexec
    cp -f /etc/shadow $_EMERGE_ROOT/etc
}
