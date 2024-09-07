########################
### Personal aliases ###
########################

alias vim="nvim"                                                              # Open neovim
alias c="code"                                                                # Open VS Code
alias t="touch"                                                               # Create a new file
alias cx="clear"                                                              # Clear terminal
alias cs="~/.config/auto-commit.sh"                                           # Auto commit script
alias chwp="~/.config/change-wallpaper.sh"                                    # Script to change wallpaper
alias addw="~/.config/aspell-add-word.sh"                                     # Script to add words into personal aspell dict
alias dolphinenable="systemctl --user start kbuildsycoca.service"             # Enable dolphin default apps



# Zsh configuration management
alias in='nvim $(fzf -m --preview="bat --color=always {}")'            # Open file with fzf preview
alias sudoin='sudo nvim $(fzf -m --preview="bat --color=always {}")'   # Edit file with sudo and fzf preview
alias re="source ~/.zshrc"                                             # Reload Zsh configuration
