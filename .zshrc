# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/marlinski/.zshrc'

typeset -A key

key[Home]=${terminfo[khome]}
key[End]=${terminfo[kend]}
key[Insert]=${terminfo[kich1]}
key[Delete]=${terminfo[kdch1]}
key[Up]=${terminfo[kcuu1]}
key[Down]=${terminfo[kcud1]}
key[Left]=${terminfo[kcub1]}
key[Right]=${terminfo[kcuf1]}
key[PageUp]=${terminfo[kpp]}
key[PageDown]=${terminfo[knp]}

# setup key accordingly
[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
[[ -n "${key[Insert]}"  ]]  && bindkey  "${key[Insert]}"  overwrite-mode
[[ -n "${key[Delete]}"  ]]  && bindkey  "${key[Delete]}"  delete-char
[[ -n "${key[Up]}"      ]]  && bindkey  "${key[Up]}"      up-line-or-history
[[ -n "${key[Down]}"    ]]  && bindkey  "${key[Down]}"    down-line-or-history
[[ -n "${key[Left]}"    ]]  && bindkey  "${key[Left]}"    backward-char
[[ -n "${key[Right]}"   ]]  && bindkey  "${key[Right]}"   forward-char

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
    function zle-line-init () {
        printf '%s' ${terminfo[smkx]}
    }
    function zle-line-finish () {
        printf '%s' ${terminfo[rmkx]}
    }
    zle -N zle-line-init
    zle -N zle-line-finish
fi


autoload -Uz compinit
compinit

autoload -U colors
colors
# Définition des couleurs
cn="%{$reset_color%}" # normal color
cs="%{$fg[green]%}" # symbol color
cu="%{$fg[blue]%}" # user info color
cr="%{$fg[red]%}" # root info color
ce="%{$fg[yellow]%}" # failed error color

# Définition de 'PROMPT'
# -------------------------
PROMPT="${cs}[${cu}%n${cs}@${cu}%m${cs}:%~] [%D{%a %b %d %H:%M:%S}] 
%# ${cn}"
# useless now that I use zim

#Alias
alias ls='ls --color=auto'
alias la='ls --color=auto -la'
alias ll='ls --color=auto -lh'
alias lla='ls --color=auto -lha'
alias lll='ls --color=auto -lh | less'
alias llla='ls --color=auto -lha | less'
alias grep='egrep --color=auto'
alias grip='egrep -i -n --color=auto'
alias lynx='lynx -accept_all_cookies'
alias diff='colordiff'
alias of='openfile'
alias 49.3='sudo'
#alias pacman='pacman-color'

# Color for Less used with man
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

export EDITOR='/usr/bin/vim'
export MANPAGER='/usr/bin/less'

# Android path
export PATH="/opt/android-sdk/platform-tools:/opt/android-sdk/tools:/opt/android-ndk64/:/opt/android-sdk/studio/bin:/home/marlinski/.bin:$PATH"
# include gem (ruby)bin
export PATH="/home/marlinski/.gem/ruby/2.2.0/bin:$PATH"
export PULSE_LATENCY_MSEC=60
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on, -Dswing.aatext=true'

autoload -Uz promptinit
promptinit
prompt eriner

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[cursor]=underline

# for lilyterm
export TERM=xterm-256color
