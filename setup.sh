#!/usr/bin/env bash
#
# setup.sh:  run the workstation setup
#

# Fail immediately if any errors occur
set -e

echo
echo "-----------------------------------------"
echo "Hi! I will set up your machine!"
echo "-----------------------------------------"
echo

echo "I need your password to work with the stuff"
sudo -K
sudo true;
clear

MY_DIR="$(dirname "$0")"

# Setting up homebrew as first thing
source ${MY_DIR}/scripts/common/homebrew.sh

# Requires password, so it goes here
brew install github

source ${MY_DIR}/scripts/common/common-apps.sh

# Dev environments
source ${MY_DIR}/scripts/environments/golang.sh
source ${MY_DIR}/scripts/environments/git.sh
source ${MY_DIR}/scripts/environments/terminal.sh
