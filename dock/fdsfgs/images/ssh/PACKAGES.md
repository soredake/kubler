### fdsfgs/ssh:20170226
Built: Sun Mar 26 17:14:55 UTC 2017

Image Size: 15.37 MB
#### Installed
Package | USE Flags
--------|----------
app-misc/c_rehash-1.7-r1 | ``
app-misc/ca-certificates-20161102.3.27.2-r2 | `-cacert -insecure`
dev-libs/libressl-2.5.1 | `asm -static-libs`
net-misc/openssh-7.3_p1-r7 | `bindist hpn libressl pie ssl -`
sys-apps/attr-2.4.47-r2 | `nls -static-libs`
sys-apps/debianutils-4.7 | `-static`
sys-apps/shadow-4.4-r2 | `cracklib nls xattr -acl -audit -pam (-selinux) -skey`
sys-libs/cracklib-2.9.6-r1 | `nls zlib -python -static-libs {-test}`
sys-libs/zlib-1.2.11 | `-minizip -static-libs`
*manual install*: su-exec-0.2 | https://github.com/ncopa/su-exec/
#### Inherited
Package | USE Flags
--------|----------
**FROM fdsfgs/musl** |
sys-libs/musl-1.1.15-r2 | ``
**FROM gentoobb/busybox** |
**FROM fdsfgs/busybox** |
sys-apps/busybox-1.25.1 | `ipv6 make-symlinks static -debug -livecd -math -mdev -pam -savedconfig (-selinux) -sep-usr -syslog (-systemd)`
#### Purged
- [x] Headers
- [x] Static Libs
