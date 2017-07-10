#!/bin/bash
#
# Script Copyright www.fornesia.com
# Mod by Bustami Arifin a.k.a Abu Yazid Al-Busthami
# ==================================================
# 



        clear
        echo -e "+============================================================================+" | lolcat
        echo -e "+                                                                            +" | lolcat
        echo -e "+                       Script Premium Modified by DikaNET                   +" | lolcat 
        echo -e "+                             <<= Contact Person =>>                         +" | lolcat
        echo -e "+                        BBM :D69F79CA | WA :082228644803                    +" | lolcat
        echo -e "+                                                                            +" | lolcat
        echo -e "+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=++=+=+=+=+=+=+" | lolcat
        echo -e "------------------------------------------------------------------------------" | lolcat
        echo -e ">>>>>>>>>>                      Generate Akun SSH                   <<<<<<<<<<" | lolcat
        echo -e "------------------------------------------------------------------------------" | lolcat
        echo -e " "
        echo -e " "
	uname=trial-`</dev/urandom tr -dc X-Z0-9 | head -c4`
	masaaktif="1"
	pass=`</dev/urandom tr -dc a-f0-9 | head -c9`
	clear
	create_user
	break
	;;
	
	useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $uname
exp="$(chage -l $uname | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$pass\n$pass\n"|passwd $uname &> /dev/null
echo -e " "
echo -e "-----------------------------------------" | lolcat
echo -e ">>>>          Data Akun SSH          <<<<" | lolcat
echo -e "-----------------------------------------" | lolcat
echo -e "  Host: $myip" | lolcat
echo -e "  Username: $uname       " | lolcat
echo -e "  Password: $pass          " | lolcat
echo -e "  Port Dropbear: 443,80,22507,2000,2017  " | lolcat
echo -e "  Port OpenSSH: 22,90                    " | lolcat
echo -e "  Port Squid: 8080,3128 " | lolcat
echo -e "  Config OVPN: " | lolcat
echo -e "  http://$myip:81/1194-client.ovpn " | lolcat
echo -e "-----------------------------------------" | lolcat
echo -e "    Masa Aktif Sampai: $exp " | lolcat
myip=`ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0' | head -n1`;
echo -e "-----------------------------------------" | lolcat
echo -e "             Peraturan Server            " | lolcat
echo -e "1. Dilarang Carding, Torrent,DDOS,Spamming " | lolcat 
echo -e "   dan Ilegal Lainnya " | lolcat
echo -e "2. Max Login 2 Bitvise/Plink " |lolcat
echo -e "-----------------------------------------" | lolcat
echo -e "     PELANGGARAN YANG DILAKUKAN AKAN " | lolcat
echo -e "       MEMBUAT AKUN ANDA DIBANNED" | lolcat
echo -e "-------------- TERIMA KASIH -------------" | lolcat
echo -e " "
echo -e "===========Modified By DikaNET===========" | lolcat
