### fdsfgsglibcmultilib/jdk-icedtea:20170226
Built: Sun Mar 26 15:44:57 UTC 2017

Image Size: 168 MB
#### Installed
Package | USE Flags
--------|----------
app-arch/bzip2-1.0.6-r7 | `-static -static-libs`
app-eselect/eselect-fontconfig-1.1 | ``
app-eselect/eselect-java-0.3.0 | ``
dev-java/icedtea-bin-7.2.6.8 | `headless-awt -alsa -cjk -cups -doc -examples -gtk -multilib -nsplugin -nss -pulseaudio (-selinux) -source -webstart`
dev-java/java-config-2.2.0-r3 | `{-test}`
dev-libs/expat-2.2.0-r1 | `unicode -examples -static-libs`
dev-libs/glib-2.48.2 | `mime xattr -dbus -debug (-fam) (-selinux) -static-libs -systemtap {-test} -utils`
dev-libs/gobject-introspection-1.48.0 | `-cairo -doctool {-test}`
dev-libs/gobject-introspection-common-1.48.0 | ``
dev-libs/libffi-3.2.1 | `pax`
dev-libs/libpcre-8.40-r1 | `bzip2 cxx readline recursion-limit (unicode) zlib -jit -libedit -pcre16 -pcre32 -static-libs`
dev-libs/libxml2-2.9.4-r1 | `ipv6 readline -debug -examples -icu -lzma -python -static-libs {-test}`
dev-libs/nspr-4.13.1 | `-debug`
dev-util/pkgconfig-0.28-r2 | `hardened -internal-glib`
gnome-base/gsettings-desktop-schemas-3.20.0 | `introspection`
media-fonts/dejavu-2.35 | `-`
media-libs/fontconfig-2.11.1-r2 | `-doc -static-libs`
media-libs/freetype-2.7.1-r2 | `adobe-cff bindist bzip2 cleartype`
media-libs/lcms-2.8-r1 | `threads zlib -doc -jpeg -static-libs {-test} -tiff`
media-libs/libjpeg-turbo-1.5.0 | `-java -static-libs`
sys-apps/baselayout-java-0.1.0 | ``
x11-misc/shared-mime-info-1.4 | `{-test}`
#### Inherited
Package | USE Flags
--------|----------
**FROM fdsfgsglibcmultilib/bash** |
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-portage/portage-utils-0.62 | `nls -static`
app-shells/bash-4.3_p48-r1 | `net nls (readline) -afs -bashlogger -examples -mem-scramble -plugins`
dev-libs/iniparser-3.1-r1 | `-doc -examples -static-libs`
net-misc/curl-7.53.0 | `ipv6 ssl threads -adns -http2 -idn -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
sys-apps/acl-2.2.52-r1 | `nls -static-libs`
sys-apps/attr-2.4.47-r2 | `nls -static-libs`
sys-apps/coreutils-8.25 | `acl nls (xattr) -caps -gmp -hostname -kill -multicall (-selinux) -static -vanilla`
sys-apps/file-5.29 | `zlib -python -static-libs`
sys-apps/sed-4.2.2 | `acl nls (-selinux) -static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode -ada -debug -doc -gpm (-profile) -static-libs {-test} -tinfo -trace`
sys-libs/readline-6.3_p8-r3 | `-static-libs -utils`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
**FROM fdsfgsglibcmultilib/libressl** |
app-misc/ca-certificates-20161102.3.27.2-r2 | `-cacert -insecure`
app-misc/c_rehash-1.7-r1 | ``
dev-libs/libressl-2.5.1 | `asm -static-libs`
sys-apps/debianutils-4.7 | `-static`
**FROM fdsfgsglibcmultilib/s6** |
dev-lang/execline-2.1.1.0 | `-static -static-libs`
dev-libs/skalibs-2.3.2.0 | `ipv6 -doc -static-libs`
sys-apps/s6-2.1.3.0 | `-static`
**FROM fdsfgsglibcmultilib/glibc** |
sys-apps/gentoo-functions-0.10 | ``
sys-libs/glibc-2.23-r3 | `hardened (multilib) rpc -audit -caps -debug -gd -nscd (-profile) (-selinux) -suid -systemtap -vanilla`
sys-libs/timezone-data-2017a | `nls -leaps`
**FROM gentoobb/busybox** |
**FROM fdsfgsglibcmultilib/busybox** |
sys-apps/busybox-1.25.1 | `ipv6 make-symlinks static -debug -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog -systemd`
#### Purged
- [x] Headers
- [x] Static Libs
