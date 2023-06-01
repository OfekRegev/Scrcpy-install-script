#!/usr/bin/env bash

echo "installing brew";
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /.zprofile;

eval "$(/opt/homebrew/bin/brew shellenv)";

echo "android-platform-tools";
brew install android-platform-tools;

echo "installing scrcpy";
brew install scrcpy;

scrcpy;