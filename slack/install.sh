#!/usr/bin/env bash
source ./script/lib

if test ! -e "/Applications/Slack.app"
then
    info "Installing slack"
    brew cask install slack
else
    success "skipped installing slack"
fi
