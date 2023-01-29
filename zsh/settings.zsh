# Nicer history
HISTSIZE=1048576
HISTFILE="$HOME/.zsh_history"
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt incappendhistory
setopt extendedhistory

# Time to wait for additional characters in a sequence
KEYTIMEOUT=5 # corresponds to 10ms

ZVM_VI_INSERT_ESCAPE_BINDKEY=jj

# Use vim as the editor
export EDITOR=vim


# Use vim style line editing in zsh
bindkey -v
# Movement
bindkey -a 'gg' beginning-of-buffer-or-history
bindkey -a 'G' end-of-buffer-or-history
# Undo
bindkey -a 'u' undo
bindkey -a '^R' redo

# Backspace
bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char

# Disable shell builtins
disable r