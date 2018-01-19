if status --is-login

	source $HOME/.config/fish/alias.fish
	
	set -x LANG ja_JP.UTF-8
	set -x LC_ALL ja_JP.UTF-8
	set -x EDITOR emacsclient
	
	# Ruby Library
	set -x RUBYLIB $HOME/all/ctf/tools/pwnlib
	set -x RUBYLIB $HOME/all/ctf/tools/fsalib:$RUBYLIB
	set -x RUBYLIB $HOME/all/ctf/tools/libcdb:$RUBYLIB
	set -x RUBYLIB $HOME/all/ctf/tools/ctf:$RUBYLIB

	set -x PATH $HOME/all/ctf/tools $PATH
	set -x PATH $HOME/.rbenv/shims $PATH
	set -x PATH $HOME/miniconda3/bin $PATH
	set -x PATH $HOME/.cargo/bin $PATH
	set -x PATH $HOME/.go $PATH
	
	# 重複を削除する
	set -x PATH (echo $PATH | tr ' ' '\n' | sort -ru)
	
end
