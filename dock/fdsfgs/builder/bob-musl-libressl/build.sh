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
    # migrate from files to directories at /etc/portage/package.*
    for i in /etc/portage/package.{accept_keywords,unmask,mask,use}; do
        [[ -f "${i}" ]] && { cat "${i}"; mv "${i}" "${i}".old; }
        mkdir -p "${i}"
        [[ -f "${i}".old ]] &&  mv "${i}".old "${i}"/default
    done
    touch /etc/portage/package.accept_keywords/flaggie
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
    update_use 'net-misc/curl' '+curl_ssl_libressl' '-curl_ssl_openssl'
    emerge net-misc/curl dev-vcs/git sys-devel/distcc app-misc/jq
    install_git_postsync_hooks
    # add musl and libressl overlay
    add_overlay libressl https://github.com/gentoo/libressl.git
    add_overlay musl https://github.com/gentoo/musl.git
    # install go
    cd ~
    wget https://raw.githubusercontent.com/docker-library/golang/7e9aedf483dc0a035747f37af37ed260f2a6cf57/1.8/alpine/no-pic.patch
    wget https://storage.googleapis.com/golang/go1.4-bootstrap-20161024.tar.gz
    tar xzvf go1.4-bootstrap-20161024.tar.gz
    mv go go1.4
    cd go1.4/src/
    env CGO_ENABLED=0 ./make.bash
    export GOPATH=/go
    cd /usr/lib
    git clone https://go.googlesource.com/go
    cd go/src
    git checkout go1.8.3
    patch -p2 -i ~/no-pic.patch
    # some tests seem to be hardlinked against glibc and fail
    set +e
    ./all.bash
    set -e
    cd ../
    ln -sr bin/go /usr/bin/
    ln -sr bin/gofmt /usr/bin/
    # required by acserver build
    go install cmd/fix
    go install cmd/cover
    go install cmd/vet
    # taken from alpine build
    mkdir -p /go/src/golang.org/x/
    cd /go/src/golang.org/x/
    git clone https://go.googlesource.com/tools
    for tool in "cover" "godoc" "stringer"; do
        go install \
        golang.org/x/tools/cmd/$tool || return 1
    done
    # install aci/oci requirements
    install_oci_deps
}
