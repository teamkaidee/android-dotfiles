#!/usr/bin/env bash
source ./script/lib

set -e

if test ! -e "/Applications/Alfred 4.app"
then
    info "Installing alfred"
    brew cask install alfred
else
    success "skipped installing alfred"
fi
