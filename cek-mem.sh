#!/bin/bash
# Script cek memori server
# Created by dikanet



            free -h | grep -v + > /tmp/ramcache
			      cat /tmp/ramcache | grep -v "Swap"
