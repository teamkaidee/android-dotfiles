#!/usr/bin/env bash
source $ZSH/script/lib

if test ! -e "/Applications/Postman.app"
then
    info "Installing postman"
    brew cask install postman
else
    success "skipped installing postman"
fi