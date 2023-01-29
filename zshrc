# Allow local customizations in the ~/.zshrc_local_before file
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before
fi



# Custom prompt
source ~/.zsh/prompt.zsh

source ~/.zsh/ohmyzsh.zsh

ZSH_THEME="agnoster"

source ~/.zsh/alias.zsh

# Oh My Zsh
# The order matters
source ~/.oh-my-zsh/oh-my-zsh.sh


# Settings
source ~/.zsh/settings.zsh

