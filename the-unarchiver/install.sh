#!/usr/bin/env bash
source ./script/lib

if test ! -e "/Applications/The Unarchiver.app"
then
    info "Installing the-unarchiver"
    brew cask install the-unarchiver
else
    success "skipped installing the-unarchiver"
fi