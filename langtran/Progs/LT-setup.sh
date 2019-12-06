#!/bin/sh
# LT-setup.sh
#
# Makes a group "langtran" and makes the current user a member of that group.
#

ThisUser=`who | sed 's/ .*//'`
# echo my username is $$ThisUser and my groups are:
# id $$ThisUser

LTgroup=langtran

# if the langtran group doesn't exist, make it
#
grep $$LTgroup /etc/group >/dev/null ||
	groupadd -r $$LTgroup

# If the user is not a member of the group, add the group to the user's groups.
#
id $$ThisUser | grep $$LTgroup >/dev/null ||
	usermod -a -G $$LTgroup $$ThisUser
