#!/bin/bash
PERSONAL_DIR=~/Code/personal
mkdir -p $PERSONAL_DIR/elc
cd $PERSONAL_DIR/elc
git clone https://github.com/EpicEpidemic/EpicLanConnectSite.git

mkdir -p $PERSONAL_DIR/agiftus
cd $PERSONAL_DIR/agiftus
git clone git@github.com:MarkNBroadhead/AgiftusAPI.git
git clone git@github.com:MarkNBroadhead/AgiftusAdmin.git
git clone git@github.com:MarkNBroadhead/AgiftusApiSettings.git
git clone git@github.com:MarkNBroadhead/AgiftusDeploy.git
git clone git@github.com:MarkNBroadhead/AgiftusItemUpdater.git
git clone git@github.com:MarkNBroadhead/AgiftusSite.git
git clone git@github.com:MarkNBroadhead/amazon-advertising-api.git

mkdir -p $PERSONAL_DIR/personalization
cd $PERSONAL_DIR/personalization
git clone git@github.com:MarkNBroadhead/dotfiles.git
git clone git@github.com:MarkNBroadhead/dotfiles-secret.git
