#
# build config
#
PACKAGES=""

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    mkdir -p $EMERGE_ROOT/var/www
    wget -qO - https://tt-rss.org/gitlab/fox/tt-rss/repository/archive.tar.gz?ref=master | tar xzC $EMERGE_ROOT/var/www --strip-components 1
    chown 33:33 -R $EMERGE_ROOT/var/www
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    log_as_installed "ttrss" "latest"
}
