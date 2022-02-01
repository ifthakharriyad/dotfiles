# persist pywal theme
(cat ~/.cache/wal/sequences &)
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/riad/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Created by newuser for 5.8
# Load version control information
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b) '
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%B%F{044}${PWD/#$HOME/~}%f%b %F{34}${vcs_info_msg_0_}%f%B§%b '
alias vim='nvim'
export EDITOR='nvim'

autoload -Uz promptinit
promptinit
