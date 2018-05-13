set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache
set -x XDG_DATA_HOME $HOME/.local/share
set -x GOPATH $HOME
set -x TIGRC_USER "$XDG_CONFIG_HOME"/tig/tigrc

if test -f $XDG_CONFIG_HOME/local/fish/fish
  source $XDG_CONFIG_HOME/local/fish/fish
end

set fish_color_command magenta
set fish_color_autosuggestion 555
set fish_color_error brred
set fish_color_param cyan

alias tmux 'tmux -f $XDG_CONFIG_HOME/tmux/tmux.conf'
alias vim 'nvim'

alias rm 'rm -i'
alias cp 'cp -i'
alias mv 'mv -i'

# language
set -x LANGUAGE "en_US.UTF-8"
set -x LANG "$LANGUAGE"
set -x LC_ALL "$LANGUAGE"
set -x LC_CTYPE "$LANGUAGE"

#
ulimit -n 2048

if test (uname) = Linux
  set -x LS_COLORS "di=34:fi=0:ln=35:ex=31:so=32:bd=34;46:cd=34;43"
  alias ls 'ls --color=auto'
end
