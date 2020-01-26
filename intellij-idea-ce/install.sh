#!/usr/bin/env bash
source ./script/lib

if test ! -e "/Applications/IntelliJ IDEA CE.app"
then
    info "Installing intellij-idea-ce"
    brew cask install intellij-idea-ce
else
    success "skipped installing intellij-idea-ce"
fi