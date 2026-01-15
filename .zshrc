

# export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="$HOME/.oh-my-zsh"
export PATH="/data/data/com.termux/files/home/.local/share/nvim/mason/bin:$PATH"


# = [ Theme ] 
# == == == == == == == == == 
# ZSH_THEME="robbyrussell"
# ZSH_THEME="arrow"
ZSH_THEME="spaceship"


# == [ customs ] 
# == == == == == == == == == 
# ZSH_CUSTOM=/path/to/new-custom-folder
# export MANPATH="/usr/local/man:$MANPATH"
# export LANG=en_US.UTF-8
source $ZSH/oh-my-zsh.sh
# source ~/.zsh/z.sh
# source ~/.zsh/ceo.sh
source ~/.config/sa-mmarco/cli/weapons.sh
# source ~/.zsh/git.sh
alias zshconf="nv ~/.zshrc"




# == [  ] 
# == == == == == == == == == 
# plugins=(git)


# == [ spaceship configs ] 
# == == == == == == == == == 
SPACESHIP_PROMPT_ORDER=(
  user      # Username section
  dir       # Current directory section
  host      # Hostname section
  git       # Git section (git_branch + git_status)
  #hg        # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  #vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
# SPACESHIP_USER_SHOW=always
SPACESHIP_USER_SHOW=false

SPACESHIP_PROMPT_ADD_NEWLINE=false

SPACESHIP_CHAR_SYMBOL="ceo"  #"❯"
SPACESHIP_CHAR_SUFFIX=" "

# Do not truncate path in repos
SPACESHIP_DIR_TRUNC_REPO=false
SPACESHIP_DIR_TRUNC=1
SPACESHIP_DIR_COLOR=red
SPACESHIP_DIR_SHOW=true
SPACESHIP_DIR_PREFIX=":" #in
SPACESHIP_DIR_TRUNC_PREFIX=""

SPACESHIP_GIT_PREFIX=":" #on·
SPACESHIP_GIT_BRANCH_COLOR=#fc0fc0 #magenta
SPACESHIP_GIT_STATUS_COLOR=#007600



# export ZSH="$HOME/.zsh"
# ZSH_THEME="robbyrussell"
# source $ZSH/oh-my-zsh.sh


### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# fnm
FNM_PATH="/data/data/com.termux/files/home/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="$FNM_PATH:$PATH"
  eval "`fnm env`"
fi

export PYTHON=$(which python3)
export npm_config_python=$(which python3)

