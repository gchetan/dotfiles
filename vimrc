set runtimepath+=~/.dotfiles/vim_runtime

source ~/.dotfiles/vim_runtime/vimrcs/basic.vim
source ~/.dotfiles/vim_runtime/vimrcs/filetypes.vim
source ~/.dotfiles/vim_runtime/vimrcs/plugins_config.vim
source ~/.dotfiles/vim_runtime/vimrcs/extended.vim

fun! ShowFuncName()
    let lnum = line(".")
    let col = col(".")
    echohl ModeMsg
    echo getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
    echohl None
    call search("\\%" . lnum . "l" . "\\%" . col . "c")
endfun
map f :call ShowFuncName() <CR>

fun! GotoFuncName()
    call getline(search("^[^ \t#/]\\{2}.*[^:]\s*$", 'bW'))
endfun
map ff :call GotoFuncName() <CR>

try
    source ~/.dotfiles/vim_runtime/my_configs.vim
catch
endtry
