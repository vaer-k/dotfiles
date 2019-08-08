source $HOME/.local/bin/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
    # Bundles from the default repo (robbyrussell's oh-my-zsh)
    git

    # Syntax highlighting bundle.
    zsh-users/zsh-syntax-highlighting

    # Fish-like auto suggestions
    zsh-users/zsh-autosuggestions

    # Extra zsh completions
    zsh-users/zsh-completions

EOBUNDLES

# Load the theme
antigen theme robbyrussell

# Tell antigen that you're done
antigen apply

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/odin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

####################################### Personal stuff ####################################### 

export EDITOR="vim"

export PATH=~/bin:~/.local/bin:$PATH

# CLOJURE
export BOOT_CLOJURE_VERSION=1.10.0

# Keychain -- looks in .ssh dir by default
eval $(keychain --eval --quiet yggdrasil)

neofetch --color_blocks off --disable gpu | lolcat

# launch SSH Keychain 
# eval $(keychain --eval --quiet yggdrasil --confhost)

source /usr/share/nvm/init-nvm.sh

# Get external ip
alias wanip='dig @resolver1.opendns.com myip.opendns.com ANY +short'

# asdf
source /opt/asdf-vm/asdf.sh
source /opt/asdf-vm/completions/asdf.bash
