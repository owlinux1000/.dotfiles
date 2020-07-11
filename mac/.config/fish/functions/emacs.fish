function emacsclient
    /usr/local/bin/emacsclient $argv
end

function emacs
    emacsclient -nw -a "" $argv
end

function ekill
    emacsclient -e "(kill-emacs)"
end
