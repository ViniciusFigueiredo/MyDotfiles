#!/bin/sh

youtube=http://migre.me/uJ0RS
face=facebook.com/magno.tutor

c00=$'\e[0;30m'
c01=$'\e[0;31m'
c02=$'\e[0;32m'
c03=$'\e[0;33m'
c04=$'\e[0;34m'
c05=$'\e[0;35m'
c06=$'\e[0;36m'
c07=$'\e[0;37m'
c08=$'\e[1;30m'
c09=$'\e[1;31m'
c10=$'\e[1;32m'
c11=$'\e[1;33m'
c12=$'\e[1;34m'
c13=$'\e[1;35m'
c14=$'\e[1;36m'
c15=$'\e[1;37m'

f0=$'\e[1;30m'
f1=$'\e[1;37m'
f2=$'\e[0;37m'

kernel=`uname -rmo`
cpuspe="`sed -n '/model\ name/s/^.*:\ //p' /proc/cpuinfo | uniq` (x`nproc`)"
system=`sed 's/\s*[\(\\]\+.*$//' /etc/issue`

if [ -n "$DISPLAY" ]; then
    wmname=`echo i3`
    termfn=`echo Roboto Mono for Powerline`
    systfn=`echo FontAwesome 11`
else
    wmname="none"
    termfn="none"
    systfn="none"
fi

pkgnum=`pacman -Q|wc -l`
birthd=`sed -n '1s/^\[\([0-9-]*\).*$/\1/p' /var/log/pacman.log | tr - .`

cat << EOF
${c00}▉▉  | ${f1}OS ${f0}........... $f2$system
${c08}  ▉▉| ${f1}name ${f0}......... $f2$HOSTNAME
${c01}▉▉  | ${f1}birth day${f0}..... $f2$birthd
${c09}  ▉▉| ${f1}packages ${f0}..... $f2$pkgnum
${c02}▉▉  | 
${c10}  ▉▉| ${f1}wm ${f0}........... $f2$wmname
${c03}▉▉  | ${f1}shell ${f0}........ $f2$SHELL
${c11}  ▉▉| ${f1}terminal ${f0}..... $f2$TERM
${c04}▉▉  | ${f1}term font ${f0}.... $f2$termfn
${c12}  ▉▉| ${f1}system font ${f0}.. $f2$systfn
${c05}▉▉  | 
${c13}  ▉▉| ${f1}kernel ${f0}....... $f2$kernel
${c06}▉▉  | ${f1}processor ${f0}.... $f2$cpuspe
${c14}  ▉▉| 
${c07}▉▉  | ${f1}facebook ${f0}..... $f2$face
${c15}  ▉▉| ${f1}youtube ${f0}...... $f2$youtube
EOF
