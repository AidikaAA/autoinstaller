#!/bin/bash
# Script hapus cache ram
# Created by dikanet



            echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a
			      echo "SUKSES..!!!Cache ram anda sudah di bersihkan." | boxes -d spring | lolcat
