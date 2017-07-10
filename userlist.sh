#!/bin/bash
# Script hapus userlist
# Created by Dikanet




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
            echo -e ">>>>>>>>>>                   Daftar Akun SSH/OVPN                    <<<<<<<<<<" | lolcat
            echo -e "-------------------------------------------------------------------------------" | lolcat
            echo -e " "
            echo -e " "
echo "--------------------------------------------------"| lolcat
echo "BIL  USERNAME        STATUS        TGL KEDALUARSA "| lolcat
echo "--------------------------------------------------"| lolcat
C=1
ON=0
OFF=0
while read mumetndase
do
        AKUN="$(echo $mumetndase | cut -d: -f1)"
        ID="$(echo $mumetndase | grep -v nobody | cut -d: -f3)"
        exp="$(chage -l $AKUN | grep "Account expires" | awk -F": " '{print $2}')"
        online="$(cat /etc/openvpn/log.log | grep -Eom 1 $AKUN | grep -Eom 1 $AKUN)"
        if [[ $ID -ge 500 ]]; then
        if [[ -z $online ]]; then
        printf "%-4s %-15s %-10s %-3s\n" "$C." "$AKUN" "OFFLINE" "$exp"
        OFF=$((OFF+1))
        else
        printf "%-4s %-15s %-10s %-3s\n" "$C." "$AKUN" "ONLINE" "$exp"
        ON=$((ON+1))
        fi
        C=$((C+1))
        fi
JUMLAH="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
done < /etc/passwd
echo "--------------------------------------------------"| lolcat
echo " OFFLINE : $OFF     ONLINE : $ON     TOTAL USER : $JUMLAH "| lolcat
echo "--------------------------------------------------"| lolcat
echo -e "----------------------------------------------" | lolcat 
echo -e ">>>>>         Modified By DikaNET        <<<<<" | lolcat
echo -e "----------------------------------------------" | lolcat
