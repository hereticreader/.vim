" 引数なしでvimを開いたらNERDTreeを起動、引数ありならNERDTreeは起動 
let file_name = expand("%")
if has('vim_starting') &&  file_name == ""
    autocmd VimEnter * NERDTree ./
endif
