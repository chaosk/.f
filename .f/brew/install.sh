#!/bin/bash

xargs brew install < packages.txt
xargs brew cask install < casks.txt
