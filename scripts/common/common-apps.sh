# All independent - one fails, doesn't matter

set +e

echo
echo "Installing apps"

# Utilities
brew install postman tailscale vim
brew install --cask itsycal

# Window Managment
brew install --cask rectangle

# Terminals
brew install iterm2 tmux

# Browsers
brew install firefox google-chrome

# Communication
brew install slack

# Miscellaneous
# brew install spotify vlc adobe-acrobat-reader pandoc

# Xcode CLT
xcode-select --install

# Install kubernetes
brew install kubectl kind kube-capacity kubectx

# Install Visual Studio Code
brew install --cask visual-studio-code

# Install helm
brew install helm

# Install azure-cli
brew update && brew install azure-cli

# Install curl
brew update && brew install curl

# Install DBEaver
brew install --cask dbeaver-community

# Install ngrok
brew install --cask ngrok                                                                               # tunnel localhost over internet.

## Install Node / Javascript
mkdir ~/.nvm
brew install nvm                                                                                     # choose your version of npm
nvm install node                                                                                     # "node" is an alias for the latest version
brew install yarn 

## Install Terraform
brew install terraform
terraform -v

# Install Docker
brew install --cask docker
brew install bash-completion
brew install docker-completion
brew install docker-compose-completion
brew install docker-machine

brew cleanup

set -e