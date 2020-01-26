#!/usr/bin/env bash
source ./script/lib

if test ! -e "/Applications/Google Chrome.app"
then
    info "Installing google-chrome"
    brew cask install google-chrome
else
    success "skipped installing google-chrome"
fi
