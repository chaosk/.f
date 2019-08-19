#!/bin/bash

mkdir -p $HOME/.f

git clone --bare git@github.com:chaosk/.f.git $HOME/.f/.git

alias dotf='/usr/bin/git --git-dir=$HOME/.f/.git/ --work-tree=$HOME'

dotf checkout
dotf config --local status.showUntrackedFiles no
