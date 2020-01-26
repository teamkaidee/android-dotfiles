#!/usr/bin/env bash
source ./script/lib

if test ! -e "/Applications/Spotify.app"
then
    info "Installing spotify"
    brew cask install spotify
else
    success "skipped installing spotify"
fi
