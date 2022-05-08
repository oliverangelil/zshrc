export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
alias ls='ls -ph'
alias ll='ls -ltrh'

# Initialize Compinit                                                                                                                                                                                       
autoload -Uz compinit && compinit

# case insensitive path-completion                                                                                                                                                                          
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
                                                                                                                                                      

# partial completion suggestions                                                                                                                                                                            
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix

# allow tab completion of ../                                                                                                                                                                               
zstyle ':completion:*' special-dirs true

# Automatically run executable files                                                                                                                                                                        
zstyle ':completion:*' rehash true

# add options for terminal start                                                                                                                                                                            
setopt AUTO_CD
setopt CORRECT
setopt CORRECT_ALL
setopt NO_CASE_GLOB

# Git Integration                                                                                                                                                                                           
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git


# >>> conda initialize >>>                                                                                                                                                                                  
# !! Contents within this block are managed by 'conda init' !!                                                                                                                                              
__conda_setup="$('/Users/oliverangelil/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/oliverangelil/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/oliverangelil/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/oliverangelil/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<                                                                                                                                                                                  

# keep selected conda environment activate                                                                                                                                                                  
conda activate autoencoder
