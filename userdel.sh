#!/bin/bash
# Script hapus user SSH
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
            echo -e "------------------------------------------------------------------------------" | lolcat
            echo -e ">>>>>>>>>>                      Hapus Akun SSH/OVPN                 <<<<<<<<<<" | lolcat
            echo -e "------------------------------------------------------------------------------" | lolcat
            echo -e " "
            echo -e " "
	    user-list
	    echo ""
            read -p "Ketik user (di atas) yang akan di hapus: " uname 
	    echo -e "User $uname sukses dihapus boss!!!" | boxes -d boy | lolcat
      userdel $uname
