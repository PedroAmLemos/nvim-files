# nvim-files
Neovim's config
```neovim
# Pre requisites 
sudo apt-get install gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip build-essential

# Install Neovim
cd ~
sudo rm -r neovim
git clone https://github.com/neovim/neovim
cd neovim
sudo make CMAKE_BUILD_TYPE=Release install
cd ~
sudo rm -r neovim
```

```checkhealth
# Install node
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install neovim node package
sudo npm install -g neovim

# Python provider
sudo apt install python3-pip
pip3 install neovim
```

```
# Plugin menager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

```Apply configs
mkdir .config && cd .config && mkdir nvim && cd ~ && mkdir Documents && cd Document && mkdir Notes
mv -t ~/.config/nvim/ vim/ init.vim  lua/ UltiSnips/ 
```

```
PlugInstall
# Install vimspector https://github.com/puremourning/vimspector/releases
cd ~/.config/nvim/ && mkdir pack && cd pack
# Unpack vimspector 
tar -zxvf filename.tar.gz
python3 ~/.config/nvim/pack/vimspector/opt/vimspector/install_gadget.py --all
# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Add brew to PATH (bash)
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

# Install gh
brew install gh

# Install delta
brew install git-delta

# Install ctags
brew install ctags
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

```
Remember to install lsp servers
```
brew install fzf
sudo apt install ripgrep
```

