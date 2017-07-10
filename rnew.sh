#!/bin/bash
#
# Script Copyright www.fornesia.com
# Mod by Bustami Arifin a.k.a Abu Yazid Al-Busthami
# ==================================================
# 



echo "Kadaluarsa User: $uname Di Perbarui Sampai: $expdate"| lolcat;
usermod -e $expdate $uname
