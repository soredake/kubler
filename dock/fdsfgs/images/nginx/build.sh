#
# build config
#
_packages="www-servers/nginx"

#
# this method runs in the bb builder container just before starting the build of the rootfs
#
configure_rootfs_build()
{
    echo 'NGINX_MODULES_HTTP="access auth_basic autoindex charset fastcgi \
             gzip gzip_static limit_req map proxy rewrite scgi ssi stub_status v2"' >> /etc/portage/make.conf
    echo 'NGINX_MODULES_MAIL=""' >> /etc/portage/make.conf
    update_use 'www-servers/nginx' '+http2' '+libressl' '+luajit' '+pcre-jit'
    update_use 'dev-libs/libpcre' '-readline'
    update_use '+libressl' '+jit'
    update_use 'net-misc/iputils' '+libressl'
}

#
# this method runs in the bb builder container just before tar'ing the rootfs
#
finish_rootfs_build()
{
    mkdir -p "${_EMERGE_ROOT}"/etc/nginx/conf.d
}
