export DOTFILES=~/dotfiles
if [ -f "$DOTFILES/.bash_banner" ]; then
  cat "$DOTFILES/.bash_banner"
else
  echo 'Banner is missing, add a ~/dotfiles/.bash_banner'
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

if [ -f "$DOTFILES/.bash_aliases" ]; then
  . "$DOTFILES/.bash_aliases"
else
  echo 'Aliases are missing, add a ~/dotfiles/.bash_aliases'
fi

if [ -f "$DOTFILES/.bash_prompt" ]; then
  . "$DOTFILES/.bash_prompt"
else
  echo 'Prompt styling is missing, add a ~/dotfiles/.bash_prompt'
fi


# TODO:
# auto installs:
#
# Ansible:
# - sudo easy_install pip && sudo pip install ansible
#
# Manual (need to search):
# Yarn
# NVM
# - nvm install lts/* && nvm use lts/*
# - yarn global add jshint nodemon pm2 react-docgen sails typescript webpack webpack-dashboard yo create-react-app gulp-cli firebase-tools serve concurrently pkg


set completion-ignore-case On


#   Set Paths
#   ------------------------------------------------------------
export PATH="/usr/bin:/usr/local/bin/:$PATH"
export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PATH="/Users/jpsss/mongo/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

#   NVM
#   ------------------------------------------------------------
#nvm use lts/*
#xcode-select --switch /Applications/Xcode.app/Contents/Developer

#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------
export EDITOR=/usr/bin/nano

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
export BLOCKSIZE=1k

#   Add color to terminal
#   (this is all commented out as I use Mac Terminal Profiles)
#   from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
#   ------------------------------------------------------------
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad