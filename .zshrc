# Oh My ZSH 
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="common"

#autoload -U promptinit; promptinit
#prompt pure

# Aliases 
source $HOME/.aliases 

# Editor 
export EDITOR=nvim 

# Plugins
plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# Addons --->

# Oh My ZSH
source $ZSH/oh-my-zsh.sh

# Allowing me to execute commands I authored in ~/.local/bin
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Automatically Starting Xorg
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

# Pure Prompt
#fpath+=$HOME/.zsh/pure

# Starting Colorls 
#source $(dirname $(gem which colorls))/tab_complete.sh 
#path+=(
#    $(ruby -e 'puts File.join(Gem.user_dir, "bin")')
#)
