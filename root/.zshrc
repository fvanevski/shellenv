# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/.local/bin"
export TERM="xterm-256color"
export LANG="en_US.UTF-8"
export HUGGINGFACE_HUB_TOKEN="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"

# Path to your Oh My Zsh installation.

export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
setopt correct

plugins=(
  git
  zsh-autosuggestions
#  zsh-syntax-highlighting
  F-Sy-H
  zsh-autocomplete
#  history-substring-search
#  web-search
#  zsh-navigation-tools
  fzf
  zoxide
  eza
)

export FZF_BASE=~/.fzf
source $FZF_BASE/fzf.sh
export ZOXIDE_CMD_OVERRIDE=cd

source $ZSH/oh-my-zsh.sh

# User configuration

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

. "$HOME/.local/bin/env"

export BAT_THEME="TwoDark"

eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FPATH="/${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/eza/completions/zsh:$FPATH"
source "/${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/FuzzyFS/fuzzy-fs"

source ~/.keybinds.zsh
