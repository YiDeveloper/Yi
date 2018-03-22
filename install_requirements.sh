#!/bin/bash

echo ============================================================
echo ==================== Y I C O I N ===========================
echo ============================================================

#################################################################
# Update Ubuntu and install prerequisites for running YiCoin  #
#################################################################
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade


#################################################################
# Install all necessary packages for building YiCoin          #
#################################################################
sudo apt-get install -y build-essential libssl-dev 
sudo apt-get install -y libboost-all-dev git libdb5.3++-dev 
sudo apt-get install -y libminiupnpc-dev screen


#################################################################
# Creating local wallet folder to download and install YiCoin #
#################################################################
sudo mkdir /wallets
sudo chmod 777 /wallets

#################################################################
# Downloading source code from Github                           #
#################################################################
git clone https://github.com/YiDeveloper/Yi.git yicoin
cd yicoin

#################################################################
# Changing permission to run                                    #
#################################################################
cd ./src/leveldb
chmod +x build_detect_platform
cd ../..


#################################################################
# Compiling daemon                                              #
#################################################################
make -f makefile.unix


#################################################################
# Infos                                                         #
#################################################################
echo Visit: https://yicoin.eu/
echo Check guides how to create masternodes and news about YiCoin
