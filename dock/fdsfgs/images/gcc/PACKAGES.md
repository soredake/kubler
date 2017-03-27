### fdsfgs/gcc:20170226
Built: Sun Mar 26 16:49:05 UTC 2017

Image Size: 163 MB
#### Installed
Package | USE Flags
--------|----------
dev-libs/gmp-6.1.0 | `asm cxx -doc -pgo -static-libs`
dev-libs/mpc-1.0.2-r1 | `-static-libs`
dev-libs/mpfr-3.1.3_p4 | `-static-libs`
sys-apps/gentoo-functions-0.10 | ``
sys-devel/binutils-2.26.1 | `cxx nls -multitarget -static-libs {-test} -vanilla`
sys-devel/binutils-config-5-r3 | ``
sys-devel/gcc-4.9.4-r99 | `cxx fortran hardened nls nptl openmp (-altivec) (-awt) (-cilk) -debug -doc (-fixed-point) -gcj -go -graphite (-libssp) (-multilib) -nopie -nossp -objc -objc`
sys-devel/gcc-config-1.7.3 | ``
sys-devel/make-4.2.1 | `nls -guile -static`
sys-kernel/linux-headers-4.4 | ``
#### Inherited
Package | USE Flags
--------|----------
**FROM fdsfgs/bash** |
app-admin/eselect-1.4.8 | `-doc -emacs -vim-syntax`
app-portage/portage-utils-0.62 | `nls -static`
app-shells/bash-4.3_p48-r1 | `net nls (readline) -afs -bashlogger -examples -mem-scramble -plugins`
dev-libs/iniparser-3.1-r1 | `-doc -examples -static-libs`
net-misc/curl-7.53.0 | `ipv6 ssl threads -adns -http2 -idn -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
sys-apps/attr-2.4.47-r2 | `nls -static-libs`
sys-apps/coreutils-8.25 | `nls xattr -acl -caps -gmp -hostname -kill -multicall (-selinux) -static -vanilla`
sys-apps/file-5.29 | `zlib -python -static-libs`
sys-apps/sed-4.2.2 | `nls -acl (-selinux) -static`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm -profile -static-libs {-test} -tinfo -trace`
sys-libs/readline-6.3_p8-r3 | `-static-libs -utils`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
**FROM fdsfgs/libressl** |
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161102.3.27.2-r2 | `-cacert -insecure`
dev-libs/libressl-2.5.1 | `asm -static-libs`
sys-apps/debianutils-4.7 | `-static`
**FROM fdsfgs/s6** |
app-admin/entr-3.6 | `{-test}`
dev-lang/execline-2.1.1.0 | `-static -static-libs`
dev-libs/skalibs-2.3.2.0 | `ipv6 -doc -static-libs`
sys-apps/s6-2.1.3.0 | `-static`
**FROM fdsfgs/musl** |
sys-libs/musl-1.1.15-r2 | ``
**FROM gentoobb/busybox** |
**FROM fdsfgs/busybox** |
sys-apps/busybox-1.25.1 | `ipv6 make-symlinks static -debug -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [ ] Headers
- [ ] Static Libs

#### Included
- [x] Headers from gentoobb/glibc
- [x] Static Libs from gentoobb/glibc
