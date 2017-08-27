#
# build config
#
_packages="dev-libs/libressl net-misc/steamcmd-bin net-misc/curl app-shells/bash"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    add_overlay eroen https://anongit.gentoo.org/git/user/eroen.git
    update_use dev-libs/libressl +abi_x86_32
    update_use net-misc/curl +abi_x86_32
    update_keywords net-misc/steamcmd-bin +~amd64
    update_use sys-libs/zlib +abi_x86_32
    update_use dev-libs/libffi +abi_x86_32
    update_use virtual/pkgconfig +abi_x86_32
    update_use dev-libs/glib +abi_x86_32
    update_use sys-apps/attr +abi_x86_32
    update_use virtual/libiconv +abi_x86_32
    update_use virtual/libintl +abi_x86_32
    update_use dev-libs/libpcre +abi_x86_32
    update_use virtual/libffi +abi_x86_32
    update_use dev-util/pkgconfig +abi_x86_32
    provide_package sys-devel/gcc
    update_use 'sys-libs/ncurses' '+minimal'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    # these symlinks are needed for Sven-Coop
    ln -sfv libssl.so.39.0.1 ${_EMERGE_ROOT}/usr/lib32/libssl.so.1.0.0
    ln -sfv libcrypto.so.38.0.1 ${_EMERGE_ROOT}/usr/lib32/libcrypto.so.1.0.0

    useradd -s /bin/sh steam
    mkdir -p "${_EMERGE_ROOT}/home/steam/Steam"
    chown -R steam:steam "${_EMERGE_ROOT}/home/steam"
    #copy_gcc_libs
    #mkdir -p ${EMERGE_ROOT}/lib32
    #LIBGCC="$(find /usr/lib/gcc/*/*/32 -name libgcc_s.so.1)"
    #LIBSTDC="$(find /usr/lib/gcc/*/*/32 -name libstdc++.so.6)"
    #for lib in ${LIBGCC} ${LIBSTDC}; do
    #    cp $lib ${EMERGE_ROOT}/lib32
    #done
}
