#!/usr/bin/env bash
source ./script/lib

if test ! -e $(which fastlane)
then
    update "Installing fastlane..."
    brew cask install fastlane
else
    success "skipped installing fastlane"
fi