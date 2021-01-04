# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Add some casks
brew tap aws/tap
brew tap mongodb/brew
brew tap derailed/k9s
brew tap garethr/kubeval
brew tap grpc/grpc
brew tap hashicorp/tap
brew tap heroku/brew
brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew tap homebrew/core
brew tap oclint/formulae
brew tap topfreegames/tfg
# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install CLI tools
brew install awscli
brew install aws-mfa
brew install clang-format
brew install cocoapods
brew install curl
brew install fish
brew install font-fira-code
brew install git
brew install git-delta
brew install git-lfs
brew install go
brew install helm
brew install heroku
brew install htop
brew install hugo
brew install jq
brew install k9s
brew install kube-auth
brew install minikube
brew install node
brew install nvm
brew install redis
brew install shellcheck
brew install stern
brew install terraform
brew install unity
brew install visual-studio-code
brew install vlc
brew install watch
brew install yarn

# Install CLI tools
brew cask install cleanmymac
brew cask install docker
brew cask install imageoptim
brew cask install insomnia
brew cask install slack
brew cask install zoomus

# Remove outdated versions from the cellar.
brew cleanup