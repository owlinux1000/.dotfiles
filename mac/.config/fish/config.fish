
if status --is-login
    
    if not functions -q fisher
        set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
        curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
        fish -c fisher
    end
    
    set fish_greeting
    
    source $HOME/.config/fish/private.fish
	
    set -x LANG ja_JP.UTF-8
    set -x LC_ALL ja_JP.UTF-8
    set -x EDITOR emacsclient
    set -x PATH $HOME/bin $PATH
    # Golang
    set -x GOPATH $HOME/.go
    set -x PATH $HOME/.go/bin $PATH
    
    # Ruby library path
    #set -x RUBYLIB $HOME/all/ctf/tools/pwnlib
    #set -x RUBYLIB $HOME/all/ctf/tools/fsalib:$RUBYLIB
    #set -x RUBYLIB $HOME/all/ctf/tools/libcdb:$RUBYLIB
    #set -x RUBYLIB $HOME/all/ctf/tools/ctf:$RUBYLIB

    # Rust
    set -x PATH $HOME/.cargo/bin $PATH
    set -x PATH $HOME/all/ctf/tools $PATH
    
    # Removce duplicating PATH
    set -x PATH (echo $PATH | tr ' ' '\n' | sort -ru)

    # Ruby
    set -x PATH $HOME/.rbenv/shims $PATH
    rbenv init - | source

    set -x PATH $HOME/.nimble/bin $PATH
end
