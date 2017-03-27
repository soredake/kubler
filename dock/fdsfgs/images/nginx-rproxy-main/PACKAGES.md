### fdsfgs/nginx-rproxy-main:20170226
Built: Sun Mar 26 17:00:38 UTC 2017

Image Size: 11.12 MB
#### Installed
Package | USE Flags
--------|----------
dev-libs/libpcre-8.40-r1 | `cxx recursion-limit (unicode) zlib -bzip2 -jit -libedit -pcre16 -pcre32 -readline -static-libs`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
www-servers/nginx-1.10.3 | `http http-cache http2 ipv6 libressl pcre ssl threads -aio -debug -libatomic -luajit -pcre-jit -rtmp (-selinux) -vim-syntax`
#### Inherited
Package | USE Flags
--------|----------
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
- [x] Headers
- [x] Static Libs
