#
# build config
#
_packages="dev-java/icedtea-bin"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    update_use 'dev-java/icedtea-bin' '-webstart' '+headless-awt'
    # skip python, nss and gcc
    provide_package dev-lang/python
    provide_package dev-libs/nss
    provide_package sys-devel/gcc
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    copy_gcc_libs
    # gentoo's run-java-tool.bash wrapper expects which at /usr/bin
    ln -rs ${EMERGE_ROOT}/bin/which ${EMERGE_ROOT}/usr/bin/which
}
