#!/usr/bin/env bash
source ./script/lib

if test ! $(which subl)
then
	info "Installing sublime-text"
	brew cask install sublime-text
else
    success "skipped installing sublime-text"
fi
