if status --is-login

    set fish_greeting
    
    source $HOME/.config/fish/private.fish
	
    set -x LANG ja_JP.UTF-8
    set -x LC_ALL ja_JP.UTF-8
    set -x EDITOR emacsclient

    # Golang
    set -x GOPATH $HOME/.go
    set -x PATH $HOME/.go/bin $PATH
    
    # Ruby library path
    #set -x RUBYLIB $HOME/all/ctf/tools/pwnlib
    #set -x RUBYLIB $HOME/all/ctf/tools/fsalib:$RUBYLIB
    #set -x RUBYLIB $HOME/all/ctf/tools/libcdb:$RUBYLIB
    #set -x RUBYLIB $HOME/all/ctf/tools/ctf:$RUBYLIB

    # Python
    set -x PATH $HOME/.miniconda3/bin $PATH
    source (conda info --root)/etc/fish/conf.d/conda.fish

    # Rust
    set -x PATH $HOME/.cargo/bin $PATH

    set -x PATH $HOME/all/ctf/tools $PATH
    
    # Removce duplicating PATH
    set -x PATH (echo $PATH | tr ' ' '\n' | sort -ru)
    
    # Ruby
    set -x PATH $HOME/.rbenv/shims $PATH
    rbenv init - | source
end
