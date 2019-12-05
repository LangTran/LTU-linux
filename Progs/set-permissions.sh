#!/bin/sh
# set-permissions.sh
# makes langtran and langtran/Progs writable by group.
#
chgrp -R langtran /usr/local/langtran
chmod g+ws /usr/local/langtran
chmod g+ws /usr/local/langtran/Progs
