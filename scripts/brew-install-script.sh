#!/bin/sh
# Show commands and exit on error
set -ex

# 
# Homebrew Script for RCH OSX 
# https://formulae.brew.sh
echo "Go visit https://brew.sh"

which -s brew
if [[ $? != 0 ]] ;
then
    # Install Homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Updating brew..."
brew update

# Casks
##  java - installs latest openjdk version	
## Docker Desktop von Docker Hub direkt heruntergeladen - hat irgendwie nicht so richtig funktioniert
CASKS=(
	sublime-text
	java
	intellij-idea
	slack
	google-chrome
	tunnelblick
	dbvisualizer
)
echo "Installing cask apps..."
brew cask install ${CASKS[@]}


# Dev Tools
DEVTOOLS=(
	mas
	maven
	git
	docker
	npm
	jq
)
echo "Installing dev tools apps ..."
brew install ${DEVTOOLS[@]}
echo "Cleaning up ..."
brew cleanup

brew tap microsoft/mssql-release https://github.com/Microsoft/homebrew-mssql-release
ACCEPT_EULA=y brew install msodbcsql mssql-tools

# manuell Citrix Workspace installieren 
# https://www.citrix.com/de-de/downloads/workspace-app/mac/workspace-app-for-mac-latest.html

# manuell Jabra installieren
# https://www.jabra.com.de/software-and-services/jabra-direct

#sudo brew services start openvpn
echo "# .zshrc file" > ~/.zshrc
echo "export PATH=/usr/local/sbin:\$PATH" >> ~/.zshrc

# Install sdkman
# see https://sdkman.io/install
curl -s "https://get.sdkman.io" | bash
