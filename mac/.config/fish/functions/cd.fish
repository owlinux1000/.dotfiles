function cd
    builtin cd $argv
    ls -F
end

function up
    cd ../
end
