function emacsclient
    /usr/local/Cellar/emacs/26.1_1/bin/emacsclient $argv
end

function emacs
    emacsclient -nw -a "" $argv
end

function ekill
    emacsclient -e "(kill-emacs)"
end
