#!/usr/bin/env bash
source ./script/lib

if test ! -e "/Applications/iTerm.app"
then
    info "Installing iterm2"
    brew cask install iterm2
else
    success "skipped installing iterm2"
fi