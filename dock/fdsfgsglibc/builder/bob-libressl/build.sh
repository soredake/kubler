#
# Kubler phase 1 config, pick installed packages and/or customize the build
#

#
# This hook can be used to configure the build container itself, install packages, run any command, etc
#
configure_bob() {
    fix_portage_profile_symlink
    # install basics used by helper functions
    emerge app-portage/flaggie app-portage/eix app-portage/gentoolkit
    configure_eix
    mkdir -p /etc/portage/package.{accept_keywords,unmask,mask,use}
    touch /etc/portage/package.accept_keywords/flaggie
    # set locale of build container
    echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
    locale-gen
    echo 'LANG="en_US.UTF-8"' > /etc/env.d/02locale
    env-update
    source /etc/profile
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
    # install default packages
    update_use 'dev-vcs/git' '-perl'
    update_use 'app-crypt/pinentry' '+ncurses'
    update_keywords 'app-portage/layman' '+~amd64'
    update_keywords 'dev-python/ssl-fetch' '+~amd64'
    update_use 'net-misc/curl' '+curl_ssl_libressl' '-curl_ssl_openssl'
    emerge net-misc/curl dev-vcs/git app-portage/layman sys-devel/distcc app-misc/jq
    install_git_postsync_hooks
    configure_layman
    # install aci/oci requirements
    emerge dev-lang/go
    install_oci_deps
}
