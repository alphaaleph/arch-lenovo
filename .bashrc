#!/bin/bash
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.bash_alias ]] && source ~/.bash_alias

# PS1='[\u@\h \W]\$ '

PS1="\n\[\e[34m\]╔═(\[\e[35m\]\u\[\e[34m\]@\[\e[35m\]\h\[\e[34m\])════════════(\[\e[35m\]\w\[\e[34m\])════════════(\[\e[36m\]\@, \d\[\e[34m\])════════════▒\n╚══\[\e[37m\][\\$]> "
 
# system exports
export VISUAL=vim
export EDITOR=vim
export GTK_THEME=Pop-dark

# language exports
export GOROOT=/usr/local/go
# export GOBIN=/usr/lib/go/bin
export GOPATH=$HOME/dev/go
export GOBIN=$GOPATH/bin
export GOPKG=$GOPATH/pkg
export GOSRC=$GOPATH/src
export CODEINFO=$HOME/info

export RUST=$HOME/.cargo

# export PATH=$PATH:$HOME/.local/bin:$GOBIN
function addToPath {
    case ":$PATH:" in
        *":$1:"*) :;; # already there
	*) PATH="$1:$PATH";; # or PATH="$PATH:$1"
    esac
}

addToPath $HOME/.local/bin:$GOROOT/bin:$GOBIN:$CODEINFO:$RUST/bin

neofetch

