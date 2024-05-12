echo
echo "Installing Go"

cd ~/Desktop/
git clone https://github.com/udhos/update-golang
cd update-golang
sudo ./update-golang.sh
cd ..
rm -rf update-golang

# For pprof
brew install graphviz