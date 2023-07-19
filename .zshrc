HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

export EDITOR=nvim

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls="ls --color"
alias v="nvim"
alias neofetch="neofetch --config ~/.config/neofetch/config"

source $HOME/powerlevel10k/powerlevel10k.zsh-theme
source $HOME/build/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/build/zsh-autosuggestions/zsh-autosuggestions.zsh

neofetch
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
