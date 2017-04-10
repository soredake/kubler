#
# Kubler phase 1 config, pick installed packages and/or customize the build
#
_php_slot="7.1"
_php_target="php${_php_slot/\./-}"
_zend_api="20160303"
_packages="dev-lang/php dev-php/pecl-apcu_bc dev-libs/libmemcached media-gfx/imagemagick"
_php_timezone="${BOB_TIMEZONE:-UTC}"

configure_bob()
{
    echo "PHP_TARGETS=\"${_php_target}\"" >> /etc/portage/make.conf
    echo "-php_targets_${_php_target}" >> /etc/portage/profile/use.mask

    update_keywords 'dev-lang/php' '+~amd64'
    update_use 'sys-libs/ncurses' '+minimal'

    update_use '+gif' '+jpeg' '+jpeg2k' '+png' '+tiff' '+webp'
    update_use 'dev-lang/php' '+bcmath' '+calendar' '+curl' '+fpm' '+mhash' \
               '-mysql' '-mysqli' '+postgres' '+pcntl' '+pdo' '+soap' '+sockets' '+webp' '+xmlreader' '+xmlrpc' '+xmlwriter' '+xpm' '+xslt' '+zip'
    # flaggie issue with gd use flag, apparently there now is a conflicting license with the same name
    echo 'dev-lang/php gd' >> /etc/portage/package.use/php
    update_use 'app-eselect/eselect-php' '+fpm'
    update_use 'media-gfx/imagemagick' '-openmp'<F14>
    emerge php git libmemcached imagemagick
}

#
# This hook is called just before starting the build of the root fs
#
configure_rootfs_build()
{
    update_use 'dev-php/pecl-apcu' '+mmap'

    # skip bash, perl, autogen. pulled in as dep since php 5.5.22
    provide_package app-shells/bash dev-lang/perl sys-devel/autogen
}

#
# This hook is called just before packaging the root fs tar ball, ideal for any post-install tasks, clean up, etc
#
finish_rootfs_build()
{
    # set php iconv default to UTF-8, if you need full iconv functionality set ICONV_FROM=kubler/glibc above
    local fpm_php_ini
    fpm_php_ini="${_EMERGE_ROOT}"/etc/php/fpm-php"${_php_slot}"/php.ini
    sed -i 's/^;iconv.input_encoding = ISO-8859-1/iconv.input_encoding = UTF-8/g' "${fpm_php_ini}"
    sed -i 's/^;iconv.internal_encoding = ISO-8859-1/iconv.internal_encoding = UTF-8/g' "${fpm_php_ini}"
    sed -i 's/^;iconv.output_encoding = ISO-8859-1/iconv.output_encoding = UTF-8/g' "${fpm_php_ini}"
    # set php time zone
    sed -i "s@^;date.timezone =@date.timezone = $_php_timezone@g" "${fpm_php_ini}"
    # use above changes also for php cli config
    cp "${fpm_php_ini}" "${_EMERGE_ROOT}"/etc/php/cli-php"${_php_slot}"/php.ini
    # required by imagick
    find /usr/lib64/gcc/x86_64-pc-linux-gnu -name libgomp.so.* -exec cp {} "${_EMERGE_ROOT}"/usr/lib64/ \;
}
