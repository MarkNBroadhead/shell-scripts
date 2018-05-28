#!/bin/bash
PERSONAL_DIR=~/Code/personal

echo "Cloning shell scripts"
cd $PERSONAL_DIR
git clone git@github.com:MarkNBroadhead/shell-scripts.git
git clone git@github.com:MarkNBroadhead/StartPage.git

# other people's project I'm heling with
git clone git@github.com:MarkNBroadhead/Heroes-of-Order.git

mkdir -p $PERSONAL_DIR/elc
cd $PERSONAL_DIR/elc
git clone git@github.com:EpicEpidemic/EpicLanConnectSite.git
git clone git@github.com:EpicEpidemic/EpicLanConnectAPI.git

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

mkdir -p $PERSONAL_DIR/nora
cd $PERSONAL_DIR/nora
git clone git@github.com:MarkNBroadhead/blockbreaker2.git

mkdir -p $PERSONAL_DIR/utils
cd $PERSONAL_DIR/utils
git clone git@github.com:MarkNBroadhead/Teamspeak3Updater.git
git clone git@github.com:MarkNBroadhead/MinecraftModManager.git

