HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

export EDITOR=nvim

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ytfetch='/usr/bin/python /home/airvin/projects/yt.py'
alias ls="ls --color"
alias v="nvim"
alias neofetch="neofetch --config ~/.config/neofetch/config"

source $HOME/powerlevel10k/powerlevel10k.zsh-theme
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
