#!/usr/bin/env bash
source ./script/lib

set -e

if test ! $(which docker)
then
    info "Installing docker"
    brew cask install docker
else
    success "skipped installing docker"
fi