#!/bin/bash

if [[ $(command -v brew) == "" ]]; then
    echo "Installing Hombrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

xargs brew install < "${BASH_SOURCE%/*}/packages.txt"
xargs brew cask install < "${BASH_SOURCE%/*}/casks.txt"
