#!/bin/sh
# mk-langtran.sh
# to run the epm command with the right options
#
sudo epm -vv -k -n -f deb --output-dir Output langtran LangTranUpdate.list
