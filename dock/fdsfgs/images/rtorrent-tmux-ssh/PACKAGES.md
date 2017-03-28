### fdsfgs/rtorrent-tmux-ssh:20170326

Built: Tue Mar 28 14:57:12 UTC 2017
Image Size: 24.52 MB

#### Installed
Package | USE Flags
--------|----------
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161102.3.27.2-r2 | `-cacert -insecure`
app-misc/tmux-2.2 | `-debug (-selinux) -utempter -vim-syntax`
dev-libs/libevent-2.1.8 | `libressl ssl threads -debug -static-libs {-test}`
dev-libs/libressl-2.5.1 | `asm -static-libs`
dev-libs/libsigc++-2.8.0 | `-doc -static-libs {-test}`
net-libs/libtorrent-0.13.6 | `ipv6 libressl ssl -debug {-test}`
net-misc/curl-7.53.0 | `ipv6 ssl threads -adns -http2 -idn -kerberos -ldap -metalink -rtmp -samba -ssh -static-libs {-test}`
net-misc/openssh-7.3_p1-r7 | `bindist hpn libressl pie ssl -`
net-p2p/rtorrent-0.9.6 | `ipv6 -daemon -debug (-selinux) {-test} -xmlrpc`
sys-apps/attr-2.4.47-r2 | `nls -static-libs`
sys-apps/debianutils-4.7 | `-static`
sys-apps/shadow-4.4-r2 | `cracklib nls xattr -acl -audit -pam (-selinux) -skey`
sys-libs/cracklib-2.9.6-r1 | `nls zlib -python -static-libs {-test}`
sys-libs/ncurses-6.0-r1 | `cxx minimal threads unicode (-ada) -debug -doc -gpm -profile -static-libs {-test} -tinfo -trace`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
#### Inherited
Package | USE Flags
--------|----------
**FROM fdsfgs/s6** |
app-admin/entr-3.6 | `{-test}`
dev-lang/execline-2.1.1.0 | `-static -static-libs`
dev-libs/skalibs-2.3.2.0 | `ipv6 -doc -static-libs`
sys-apps/s6-2.1.3.0 | `-static`
**FROM fdsfgs/musl** |
sys-libs/musl-1.1.15-r2 | ``
**FROM fdsfgs/busybox** |
sys-apps/busybox-1.25.1 | `ipv6 make-symlinks static -debug -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
