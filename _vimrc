" ============================================================
"  Author: chusiang / chusiang.lai (at) gmail.com
"  Blog: http://note.drx.tw
"  Filename: _vimrc
"  Modified: 2014-12-30 17:08
"  Description: vimrc for GNU/Linux.
"  Reference: 
" =========================================================== 

" Source a global configuration file if available
for CONFIG in split(glob('~/.vim/vimrc.d/*.vim'), '\n')
   exe 'source' CONFIG
endfor

" = NeoBundle (Vim plugin manager) =
filetype off                   " required!

"use git:// as bundle default protocal
"let g:vundle_default_git_proto = 'git'

if has('win32')
    set rtp+=%UserProfile%\vimfiles/bundle/neobundle.vim/
else
    set rtp+=~/.vim/bundle/neobundle.vim/
endif


call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
source ${HOME}/.vim/plugin-list.vim

call neobundle#end()

" Required:
filetype plugin indent on     

"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
NeoBundleCheck

"set wrap
source ~/.vim/vimrc.d/keymap.vim
