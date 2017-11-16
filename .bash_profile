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

echo "$DOTFILES/.bash_prompt"

#   Set Paths
#   ------------------------------------------------------------
export PATH="/usr/bin:/usr/local/bin/:$PATH"

export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PATH="/Users/jpsss/mongo/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

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
export LSCOLORS=GxFxCxDxBxegedabagaced
