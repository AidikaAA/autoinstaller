#!/bin/bash
#
# Script Copyright www.fornesia.com
# Mod by Bustami Arifin a.k.a Abu Yazid Al-Busthami
# ==================================================
# 


            clear
	          echo -e " "
            echo -e " "
	          echo -e "+============================================================================+" | lolcat
            echo -e "+                                                                            +" | lolcat
            echo -e "+                       Script Premium Modified by DikaNET                   +" | lolcat 
            echo -e "+                             <<= Contact Person =>>                         +" | lolcat
            echo -e "+                        BBM :D69F79CA | WA :082228644803                    +" | lolcat
            echo -e "+                                                                            +" | lolcat
            echo -e "+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=++=+=+=+=+=+=+" | lolcat
            echo -e "-------------------------------------------------------------------------------" | lolcat
            echo -e ">>>>>>>>>>                        Renew Akun SSH/OVPN                <<<<<<<<<<" | lolcat
            echo -e "-------------------------------------------------------------------------------" | lolcat
            echo -e " "
            echo -e " "
            read -p "Enter username yg di perbarui: " uname
            echo "Kadaluarsa User: $uname Di Perbarui Sampai: $expdate"| lolcat;
            read -p "Aktif sampai tanggal Thn-Bln-Hr(YYYY-MM-DD): " expdate
            usermod -e $expdate $uname
            
