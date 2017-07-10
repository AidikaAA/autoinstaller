#!/bin/bash
#
# Script Copyright mitrassh
# Modified By Dikanet
# ==========================
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
          echo -e ">>>>>>>>>>                      Cek Login Akun SSH                  <<<<<<<<<<" | lolcat
          echo -e "------------------------------------------------------------------------------" | lolcat
          echo -e " "
          echo -e " "
echo ""| lolcat
echo "|   Tgl-Jam    | PID   |   User Name  |      Dari IP      |"| boxes -d peek | lolcat
echo "-------------------------------------------------------------"| lolcat
data=( `ps aux | grep -i dropbear | awk '{print $2}'`);

echo "=================[ Checking Dropbear login ]================="| lolcat
echo "-------------------------------------------------------------"| lolcat
for PID in "${data[@]}"
do
	#echo "check $PID";
	NUM=`cat /var/log/auth.log | grep -i dropbear | grep -i "Password auth succeeded" | grep "dropbear\[$PID\]" | wc -l`;
	USER=`cat /var/log/auth.log | grep -i dropbear | grep -i "Password auth succeeded" | grep "dropbear\[$PID\]" | awk -F" " '{print $10}'`;
	IP=`cat /var/log/auth.log | grep -i dropbear | grep -i "Password auth succeeded" | grep "dropbear\[$PID\]" | awk -F" " '{print $12}'`;
	waktu=`cat /var/log/auth.log | grep -i dropbear | grep -i "Password auth succeeded" | grep "dropbear\[$PID\]" | awk -F" " '{print $1,$2,$3}'`;
	if [ $NUM -eq 1 ]; then
		echo "$waktu - $PID - $USER - $IP"| lolcat;
	fi
done


echo "-------------------------------------------------------------"| lolcat
data=( `ps aux | grep "\[priv\]" | sort -k 72 | awk '{print $2}'`);

echo "=====================[ CEK LOGIN OpenSSH ]==================="| lolcat
echo "-------------------------------------------------------------"| lolcat
for PID in "${data[@]}"
do
        #echo "check $PID";
		NUM=`cat /var/log/auth.log | grep -i sshd | grep -i "Accepted password for" | grep "sshd\[$PID\]" | wc -l`;
		USER=`cat /var/log/auth.log | grep -i sshd | grep -i "Accepted password for" | grep "sshd\[$PID\]" | awk '{print $9}'`;
		IP=`cat /var/log/auth.log | grep -i sshd | grep -i "Accepted password for" | grep "sshd\[$PID\]" | awk '{print $11}'`;
		waktu=`cat /var/log/auth.log | grep -i sshd | grep -i "Accepted password for" | grep "sshd\[$PID\]" | awk '{print $1,$2,$3}'`;
        if [ $NUM -eq 1 ]; then
                echo "$waktu - $PID - $USER - $IP"| lolcat;
        fi
done

echo    "-------------------------------------------------------------"| lolcat
echo -e "============[ MONITOR PENGGUNA DROPBEAR & OpenSSH]==========="| lolcat
echo -e " "
echo -e "----------------------------------------------------------" | lolcat 
echo -e ">>>>>>>>>>           Modified By DikaNET        <<<<<<<<<<" | lolcat
echo -e "----------------------------------------------------------" | lolcat
