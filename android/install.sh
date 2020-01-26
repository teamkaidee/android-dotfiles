#!/usr/bin/env bash
source ./script/lib

if test ! $(which java)
then
    info "Installing java8"
    brew tap homebrew/cask-versions
    brew cask install adoptopenjdk/openjdk/adoptopenjdk8
    success 'Java8 has been installed.'
fi

if test ! -e "~/.android/repositories.cfg"
then
    touch ~/.android/repositories.cfg
fi

if test ! -e $ANDROID_HOME
then
    info "Installing android-sdk"
    brew install android-sdk
    brew install android-ndk         
fi

if test ! -e "$ANDROID_HOME/licenses"
then
    sudo cp -r ./android/licenses $ANDROID_HOME/licenses
    success "Android SDK licences copied."
fi

$ANDROID_HOME/tools/bin/sdkmanager "platform-tools" "platforms;android-28" "platforms;android-29"
success 'Android SDK have been updated.'

if test ! -e "/Applications/Android Studio.app"
then
    brew cask install android-studio
    success 'Android Studio has been installed'
else
    success "skipped installing Android Studio"
fi

