#!/bin/bash

# platforms
if [ -d platforms ]; then
    mv platforms platforms_
    cordova platform add android
    cordova platform add browser
fi

if [ -d platforms_ ]; then
    rsync -a platforms_/ platforms/
    rm -rf platforms_
fi

# plugins 
if [ -d plugins ]; then
    mv plugins plugins_
fi

cordova plugin add org.apache.cordova.network-information

if [ -d plugins_ ]; then
    rsync -a plugins_/ plugins/
    rm -rf plugins_
fi
