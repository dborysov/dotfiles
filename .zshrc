export PATH=/usr/local/bin:$PATH
export NVM_AUTO_USE=true
export NPM_TOKEN_AGILEHUB=<TO_BE_REPLACED_WITH_A_REAL_TOKEN>

source $(brew --prefix)/share/antigen/antigen.zsh
antigen init ~/.antigenrc

bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

export UPDATE_ZSH_DAYS=1

# User configuration

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"

# add support for ctrl+o to open selected file in VS Code
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code-insiders {})+abort'"

alias ping="prettyping --nolegend"
alias top="htop"
alias cat="bat"
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias gupm="gupa origin master"
alias b="brew"
alias ls="exa"
alias l="exa -l"
alias bs="brew search"
alias bi="brew install"
alias bci="brew cask install"
alias n="npm"
alias ni="npm i"
alias niD="npm i -D"
alias ns="npm start"
alias nis="npm install && npm start"
alias nt="npm test"
alias ntu="npm test -- -u"
alias y="yarn"
alias yb="yarn build"
alias yyb="yarn && yarn build"
alias ys="yarn start"
alias yys="yarn && yarn start"
alias ya="yarn add"
alias yaD="yarn add -D"
alias yaG="yarn global add"
alias yt="yarn test"
alias ytt="yarn test:types"
alias ytts="yarn tsc --noEmit | egrep '^[a-zA-Z0-9\/\.:_@\-]+' -oh | sort | uniq"
alias ytu="yarn test -u"
alias ytw="yarn test --watch -u"
alias yyt="yarn && yarn test"
alias vsci="code-insiders"

plugins=(command-not-found)

bindkey -v

if brew command command-not-found-init > /dev/null 2>&1; then eval "$(brew command-not-found-init)"; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export YVM_DIR=~/.yvm
[ -r $YVM_DIR/yvm.sh ] && . $YVM_DIR/yvm.sh

