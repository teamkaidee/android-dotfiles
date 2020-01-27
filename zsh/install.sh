#!/usr/bin/env bash
source $ZSH/script/lib

if test ! $(which zsh)
then
    info "Installing Oh-My-ZSH!"
    brew install zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    success "Oh-My-ZSH installed"
else
    success "skipped installing Oh-My-ZSH"
fi