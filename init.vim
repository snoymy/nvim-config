for f in split(glob('~/.config/nvim/user-plugins/*.vim'), '\n')
    exe 'source' f
endfor
for f in split(glob('~/.config/nvim/init/*.vim'), '\n')
    exe 'source' f
endfor
source ~/.nvimrc
" lua << EOF
"     require("settings")
" EOF
