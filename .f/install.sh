#!/bin/bash

mkdir -p $HOME/.f

git clone --bare git@github.com:chaosk/.f.git $HOME/.f/.git

/usr/bin/git --git-dir=$HOME/.f/.git/ --work-tree=$HOME checkout
/usr/bin/git --git-dir=$HOME/.f/.git/ --work-tree=$HOME config --local status.showUntrackedFiles no
