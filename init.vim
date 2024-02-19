" for f in split(glob('~/.config/nvim/user-plugins/*.vim'), '\n')
"     exe 'source' f
" endfor
" source ~/.config/nvim/init/nvimrc
" source ~/.nvimrc
lua << EOF
     require("init")
EOF
