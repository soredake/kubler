#
# build config, sourced by build-root.sh inside build container
#
PACKAGES=""
EMERGE_BIN="emerge"

#
# this hook can be used to configure the build container itself, install packages, etc
#
configure_bob() {
    # install flaggie, required for update_use() helper
    emerge app-portage/flaggie
    mkdir -p /etc/portage/package.{accept_keywords,unmask,mask,use}
    touch /etc/portage/package.accept_keywords/flaggie

    # libressl
    echo 'USE="${USE} libressl"' >> /etc/portage/make.conf
    echo "-libressl" >> /etc/portage/profile/use.stable.mask
    echo "-curl_ssl_libressl" >> /etc/portage/profile/use.stable.mask
    mask_package dev-libs/openssl
    echo "dev-libs/libressl **" >> /etc/portage/package.accept_keywords/flaggie
    emerge -f libressl
    rm /usr/lib/misc/ssh-keysign
    emerge -C openssh openssl
    emerge -1q libressl
    emerge -1q wget python:2.7 python:3.4

    # set locale of build container
    echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
    locale-gen
    echo 'LANG="en_US.UTF-8"' > /etc/env.d/02locale
    env-update
    source /etc/profile
    # install default packages
    update_use 'dev-vcs/git' '-perl'
    update_use 'app-crypt/pinentry' '+ncurses'
    update_use 'net-misc/curl' '+curl_ssl_libressl' '-curl_ssl_openssl'
    emerge net-misc/curl dev-vcs/git sys-devel/crossdev sys-devel/distcc app-misc/jq app-portage/eix
    # init eix portage db
    eix-update
}

#
# this hook is called in the build container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    :
}
