if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


export ZSH="/home/gui/.oh-my-zsh"

# ALIASES
# General aliases
alias li='ls -l'
alias -s md=typora  # Markdown files
alias weather='curl http://wttr.in/'
alias brewup='brew update; brew upgrade; brew cleanup; brew doctor'
alias please='sudo'
alias dedoff='shutdown now'

# Dotfiles aliases (Bare Repository)
alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"

# movement aliases
alias gotovimcolors='cd /usr/share/vim/vim*/colors'
alias gotoreact='cd ~/github/learning-center/React && clear && ls'
alias gotoprinti='cd ~/Printi && clear && ls'
alias vimrc='vim ~/.vimrc'
alias nvimrc='nvim ~/.config/nvim/init.vim'
alias zshrc="vim ~/.zshrc"
alias vim='nvim'

# Git aliases
alias g='git'
alias ga='git add'
alias gc='git commit -v'
alias gd='git diff'
alias gds='git diff --staged'
alias gf='git fetch'
alias glogone='git log --oneline'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glog='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
alias gp='git push'
alias gpom="git push origin main"
alias gpoma="git push origin master"
alias grmc='git rm --cached'
alias gst='git status'

# Python aliases:
alias pipi='pip install --upgrade pip && pip install -r requirements.txt && pip freeze — local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U && pip freeze > requirements.txt && git add requirements.txt && git commit -m "Atualiza pacotes" && git push'

# Ruby aliases
alias beijos='bundle exec jekyll serve'

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh


if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
