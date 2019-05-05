function emacs
    emacsclient -nw -a "" $argv
end

function ekill
    emacsclient -e "(kill-emacs)"
end
