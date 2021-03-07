#!/bin/sh

if [ -z "$USER" ] ; then
    USER="admin"
fi

if [ -z "$PASSWORD_HASH" ] ; then
    if [ ! -z "$PASSWORD" ] ; then
        PASSWORD_HASH=`/filebrowser hash $PASSWORD`
    else
        PASSWORD_HASH=`/filebrowser hash admin`
    fi
fi

if [ -z "$@" ] ; then
    /filebrowser --username $USER --password $PASSWORD_HASH --port $PORT -a "$ADDRESS"
else
    exec $@    
fi
