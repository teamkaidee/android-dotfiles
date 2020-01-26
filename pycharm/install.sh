#!/usr/bin/env bash
source ./script/lib

set -e

if test ! -e "/Applications/PyCharm CE.app"
then
    info "Installing pycharm-ce"
    brew cask install pycharm-ce
else
    success "skipped installing pycharm-ce"
fi
