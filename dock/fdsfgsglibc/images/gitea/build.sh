#
# build config
#
PACKAGES="www-apps/gitea app-shells/bash"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    update_keywords www-apps/gitea +~amd64
    update_use 'sys-libs/ncurses' '+minimal'
    update_keywords dev-go/go-bindata +~amd64
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
}
