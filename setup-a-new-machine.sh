# copy paste this file in bit by bit.
# don't run it.
  echo "do not run this script in one go. hit ctrl-c NOW"
  read -n 1

# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# git
brew install git
# git clone dotfiles
mkdir projects
cd projects
git clone https://github.com/xxx/dotfiles.git


# read migration.md where more migrationy tips are!


# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
#bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)

# https://rvm.io
# rvm for the rubiess
curl -L https://get.rvm.io | bash -s stable --ruby


# https://github.com/isaacs/nave
# needs npm, obviously.
brew install node
# TODO: I think i'd rather curl down the nave.sh, symlink it into /bin and use that for initial node install.
#npm install -g nave
# andy use https://github.com/tj/n
npm install -g n
n stable

# homebrew!
# (google machines are funny so i have to do this. everyone else should use the regular thang)
#mkdir $HOME/.homebrew && curl -L https://github.com/mxcl/homebrew/tarball/master | tar xz --strip 1 -C $HOME/.homebrew
#export PATH=$HOME/.homebrew/bin:$HOME/.homebrew/sbin:$PATH
# install all the things
./brew.sh
#do PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
#MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
./brew-cask.sh


# https://github.com/rupa/z
# z, oh how i love you
cd ~/code
git clone https://github.com/rupa/z.git
chmod +x ~/code/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)

# z binary is already referenced from .bash_profile


# https://github.com/thebitguru/play-button-itunes-patch
# disable itunes opening on media keys
#cd ~/code
#git clone https://github.com/thebitguru/play-button-itunes-patch


# my magic photobooth symlink -> dropbox. I love it.
# + first move Photo Booth folder out of Pictures
# + then start Photo Booth. It'll ask where to put the library.
# + put it in Dropbox/public
# * now you can record photobooth videos quickly and they upload to dropbox DURING RECORDING
# * then you grab public URL and send off your video message in a heartbeat.


# for the c alias (syntax highlighted cat)
sudo easy_install Pygments


# change to bash 4 (installed by homebrew)
#BASHPATH=$(brew --prefix)/bin/bash
#sudo echo $BASHPATH >> /etc/shells
#chsh -s $BASHPATH # will set for current user only.
sudo -s
echo /usr/local/bin/bash >> /etc/shells
chsh -s /usr/local/bin/bash
#close and reopen terminal or iterm
echo $BASH_VERSION # should be 4.x not the old 3.2.X


#zsh
# git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# backup 
## cp ~/.zshrc ~/.zshrc.orig
## cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
# need restart terminal
# chsh -s /user/local/bin/zsh
#do PATH="/usr/local/bin/zsh:$PATH"
#symlink
# ln -fs ~/projects/dotfiles/.zshrc ~/.zshrc




# Later, confirm iterm settings aren't conflicting.





# symlinks!
#   put/move git credentials into ~/.gitconfig.local
#   http://stackoverflow.com/a/13615531/89484
./symlink-setup.sh

