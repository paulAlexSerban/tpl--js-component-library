#!/bin/bash
source ~/Shell-Scripts/.env

echo "${BLUE} -< LOAING >- ${NC} Useful Shell Scripts"

source ~/Shell-Scripts/git/setGitUser.bash
source ~/Shell-Scripts/git/multiBranchCherryPicker.bash

# not needed as I do not use two java versions
source ~/Shell-Scripts/java/java-alias.bash

# works only on macOS with iTerm and `tab`` installed
source ~/Shell-Scripts/utils/tab.sh

echo "${BLUE} -< LOAING >- ${NC} Useful Shell Scripts"
nvm use