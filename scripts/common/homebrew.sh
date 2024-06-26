echo

if hash brew 2>/dev/null; then
  echo "Homebrew is already installed!"
else
  echo "Installing Homebrew..."
  yes '' | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo
echo "Adding Homebrew's sbin to your PATH..."
echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.bash_profile

(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo
echo "Ensuring you have the latest Homebrew..."
brew update

echo
echo "Ensuring your Homebrew directory is writable..."
sudo chown -Rf $(whoami) $(brew --prefix)/*

echo
echo "Installing Homebrew services..."
brew tap homebrew/services

echo
echo "Upgrading existing brews..."
brew upgrade

echo "Cleaning up your Homebrew installation..."
brew cleanup
