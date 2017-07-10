#!/bin/bash
# Script hapus user SSH
# Created by Abu Yazid Al-Busthami



    
    function not_expired_users(){
    cat /etc/shadow | cut -d: -f1,8 | sed /:$/d > /tmp/expirelist.txt
    totalaccounts=`cat /tmp/expirelist.txt | wc -l`
    for((i=1; i<=$totalaccounts; i++ )); do
        tuserval=`head -n $i /tmp/expirelist.txt | tail -n 1`
        username=`echo $tuserval | cut -f1 -d:`
        userexp=`echo $tuserval | cut -f2 -d:`
        userexpireinseconds=$(( $userexp * 86400 ))
        todaystime=`date +%s`
        if [ $userexpireinseconds -gt $todaystime ] ; then
            echo $username
        fi
    done
	rm /tmp/expirelist.txt
}
   
  
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
                        echo -e "------------------------------------------------------------------------------" | lolcat
                        echo -e ">>>>>>>>>>                 Daftar Akun SSH/OVPN Expired             <<<<<<<<<<" | lolcat
                        echo -e "------------------------------------------------------------------------------" | lolcat
                        echo -e " "
                        echo -e " "
			echo -e "=================================" | lolcat
			                           not_expired_users | lolcat
			                  echo -e "=================================" | lolcat
