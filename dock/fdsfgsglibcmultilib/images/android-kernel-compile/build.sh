# build config
#
PACKAGES="dev-vcs/git app-crypt/gnupg net-misc/curl sys-devel/bc app-arch/lzop app-arch/zip app-arch/unzip dev-libs/libxml2 dev-util/ccache sys-devel/flex x11-proto/xproto x11-libs/libX11 sys-libs/zlib dev-util/gperf sys-devel/bison dev-libs/libxslt media-libs/mesa sys-kernel/linux-headers sys-devel/make sys-devel/binutils sys-devel/gcc"
KEEP_HEADERS=true
KEEP_STATIC_LIBS=true
# include glibc headers and static files from busybox image
#HEADERS_FROM=gentoobb/glibc
#STATIC_LIBS_FROM=gentoobb/glibc

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    update_keywords 'dev-lang/execline' '+~amd64'
    update_use 'sys-devel/gcc' '+multilib'
    update_use 'sys-devel/binutils' '+multitarget'
    update_use 'sys-libs/glibc' '+multilib'
    update_use 'sys-libs/ncurses' '+abi_x86_32'
    update_use 'sys-libs/zlib' '+abi_x86_32'
    update_keywords 'dev-libs/skalibs' '+~amd64'
    update_keywords 'sys-apps/s6' '+~amd64'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
}
