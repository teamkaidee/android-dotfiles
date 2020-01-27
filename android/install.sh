#!/usr/bin/env bash
source $ZSH/script/lib

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

info 'Updating Android SDK...'
$ANDROID_HOME/tools/bin/sdkmanager "platform-tools"
$ANDROID_HOME/tools/bin/sdkmanager "build-tools;28.0.3"
$ANDROID_HOME/tools/bin/sdkmanager "platforms;android-28"
$ANDROID_HOME/tools/bin/sdkmanager "platforms;android-29"
$ANDROID_HOME/tools/bin/sdkmanager "system-images;android-29;google_apis_playstore;x86"
$ANDROID_HOME/tools/bin/sdkmanager "system-images;android-28;google_apis_playstore;x86"
$ANDROID_HOME/tools/bin/sdkmanager "extras;google;instantapps"
$ANDROID_HOME/tools/bin/sdkmanager "extras;android;m2repository"
$ANDROID_HOME/tools/bin/sdkmanager "extras;google;google_play_services"
$ANDROID_HOME/tools/bin/sdkmanager "extras;google;m2repository"
success 'Android SDK have been updated.'

brew_cask_install_by_app Android\ Studio android-studio