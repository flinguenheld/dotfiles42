set -x PATH $PATH ~/bin/
set -x PATH $PATH ~/.local/bin

# HASKELL ##############
set -gx GOINFRE_DIR ~/goinfre

set -x PATH $PATH $GOINFRE_DIR/.ghcup/bin

set -gx GHCUP_INSTALL_BASE_PREFIX $GOINFRE_DIR
set -gx BOOTSTRAP_HASKELL_NONINTERACTIVE 1

set -gx CABAL_DIR $GOINFRE_DIR/.cabal
set -gx CABAL_CONFIG $CABAL_DIR/config
set -gx CABAL_STORE_DIR $CABAL_DIR/store
set -gx CABAL_LOG_DIR $CABAL_DIR/logs
# ######################

alias la="ls -la"
alias ea="eza -la"

#function fish_user_key_bindings
#    if command -s fzf-share >/dev/null
#        source (fzf-share)/key-bindings.fish
#    end
#
#    fzf_key_bindings
#end

starship init fish | source
neofetch
