### fdsfgsglibcmultilib/android-kernel-compile:20170226
Built: Sun Mar 26 15:58:55 UTC 2017

Image Size: 393.3 MB
#### Installed
Package | USE Flags
--------|----------
app-arch/lzop-1.03 | ``
app-arch/unzip-6.0_p20 | `bzip2 unicode -natspec`
app-arch/xz-utils-5.2.3 | `nls threads -static-libs`
app-arch/zip-3.0-r3 | `bzip2 crypt unicode -natspec`
app-crypt/gnupg-2.1.18 | `bzip2 gnutls nls readline smartcard -doc -ldap (-selinux) -tofu -tools -usb -wks-server`
app-crypt/pinentry-0.9.7-r1 | `ncurses -caps -emacs -gnome-keyring -gtk -qt4 -qt5 -static`
app-eselect/eselect-lib-bin-symlink-0.1.1 | ``
app-eselect/eselect-mesa-0.0.10-r1 | ``
app-eselect/eselect-opengl-1.3.1-r4 | ``
app-eselect/eselect-pinentry-0.7 | ``
dev-libs/elfutils-0.166 | `bzip2 nls utils -lzma -static-libs {-test} (-threads)`
dev-libs/gmp-6.1.0 | `asm cxx -doc -pgo -static-libs`
dev-libs/libassuan-2.4.3-r1 | `-static-libs`
dev-libs/libbsd-0.8.3 | `-static-libs`
dev-libs/libgcrypt-1.7.6 | `-doc -static-libs`
dev-libs/libgpg-error-1.27-r1 | `nls -common-lisp -static-libs`
dev-libs/libksba-1.3.5-r1 | `-static-libs`
dev-libs/libltdl-2.4.6 | `-static-libs`
dev-libs/libpthread-stubs-0.3-r1 | `-static-libs`
dev-libs/libtasn1-4.10-r1 | `-doc -static-libs -valgrind`
dev-libs/libxslt-1.1.29-r1 | `crypt -debug -examples -python -static-libs`
dev-libs/lzo-2.09 | `-examples -static-libs`
dev-libs/nettle-3.2-r1 | `gmp -doc (-neon) -static-libs {-test}`
dev-libs/npth-1.3 | `-static-libs`
dev-scheme/guile-1.8.8-r3 | `deprecated nls readline regex threads -debug -debug-freelist -debug-malloc -discouraged -emacs -networking`
dev-util/ccache-3.2.4 | ``
dev-util/gperf-3.0.4 | ``
dev-vcs/git-2.10.2 | `blksha1 curl gpg iconv libressl nls pcre python threads webdav -cgi -cvs -doc -emacs -gnome-keyring -gtk -highlight -mediawiki -mediawiki-experimental -perl (-ppcsha1) -subversion {-test} -tk -xinetd`
media-libs/mesa-13.0.5 | `bindist classic dri3 egl gallium gbm libressl llvm nettle nptl pax`
net-dns/libidn-1.33 | `nls -doc -emacs -java -mono -static-libs`
net-libs/gnutls-3.3.26 | `crywrap cxx nls openssl zlib -dane -doc -examples -guile -pkcs11 -static-libs {-test}`
sys-apps/hwids-20150717-r1 | `net pci udev usb`
sys-devel/autogen-5.18.4 | `-libopts -static-libs`
sys-devel/bc-1.06.95-r1 | `readline -libedit -static`
sys-devel/binutils-2.26.1 | `cxx multitarget nls -static-libs {-test} -vanilla`
sys-devel/binutils-config-5-r3 | ``
sys-devel/bison-3.0.4-r1 | `nls -examples -static {-test}`
sys-devel/flex-2.6.1 | `nls -static {-test}`
sys-devel/gettext-0.19.7 | `acl cxx nls openmp -cvs -doc -emacs -git -java -ncurses -static-libs`
sys-devel/llvm-3.7.1-r3 | `libffi static-analyzer -clang -debug -doc -gold -libedit -lldb -multitarget -ncurses -ocaml -python {-test} -xml`
sys-devel/m4-1.4.17 | `-examples`
sys-devel/make-4.2.1 | `nls -guile -static`
sys-kernel/linux-headers-4.4 | ``
x11-libs/libdrm-2.4.75 | `-libkms -static-libs -valgrind`
x11-libs/libpciaccess-0.13.4 | `zlib -static-libs`
x11-libs/libX11-1.6.5 | `ipv6 -doc -static-libs {-test}`
x11-libs/libXau-1.0.8 | `-static-libs`
x11-libs/libxcb-1.12-r2 | `-doc (-selinux) -static-libs {-test} -xkb`
x11-libs/libXdamage-1.1.4-r1 | `-static-libs`
x11-libs/libXdmcp-1.1.2-r1 | `-doc -static-libs`
x11-libs/libXext-1.3.3 | `-doc -static-libs`
x11-libs/libXfixes-5.0.3 | `-static-libs`
x11-libs/libxshmfence-1.2 | `-static-libs`
x11-libs/libXxf86vm-1.1.4 | `-static-libs`
x11-libs/xtrans-1.3.5 | `-doc`
x11-proto/damageproto-1.2.1-r1 | ` `
x11-proto/fixesproto-5.0-r1 | ` `
x11-proto/inputproto-2.3.2 | ` `
x11-proto/kbproto-1.0.7 | ` `
x11-proto/xextproto-7.3.0 | `-doc`
x11-proto/xf86bigfontproto-1.2.0-r1 | ` `
x11-proto/xf86vidmodeproto-2.3.1-r1 | ` `
x11-proto/xproto-7.0.31 | `-doc`
#### Inherited
Package | USE Flags
--------|----------
**FROM fdsfgsglibcmultilib/jdk-icedtea** |
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
- [ ] Headers
- [ ] Static Libs
