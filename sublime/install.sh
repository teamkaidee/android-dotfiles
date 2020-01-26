#!/usr/bin/env bash
source ./script/lib

set -e

if test ! $(which subl)
then
	info "Installing sublime-text"
	brew cask install sublime-text
fi
