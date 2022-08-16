""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plug-vim
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'lilydjwg/colorizer'
"Plug 'kshenoy/vim-signature'
"Plug 'mattn/gist-vim'
" 文件树
Plug 'preservim/nerdtree'
" 美化
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
" 常用
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-scripts/argtextobj.vim'
Plug 'dbakker/vim-paragraph-motion'
"Plug 'kana/vim-textobj-entire'
"Plug 'kana/vim-textobj-user'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'justinmk/vim-sneak'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'preservim/nerdtree' , { 'on':  'NERDTreeToggle' }
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" vim setting 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=" "

set number
set number relativenumber
set cursorline
" set cursorcolumn

setlocal foldmethod=syntax

" no backup (not producing ~ file)
set noundofile
set nobackup
set noswapfile

"  real time search result shown
set incsearch 
" 搜索高亮 键入:noh取消高亮
set hlsearch 
" 搜索到文件两端时不重新搜索  
"set nowrapscan  

" encoding setting
set enc=utf-8  
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936 

set so=3
set tabstop=4
set shiftwidth=4
set expandtab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" key mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 上下移动
nmap <C-j> :m+<CR>==
nmap <C-k> :m-2<CR>==
imap <C-j> <Esc>:m+<CR>==gi
imap <C-k> <Esc>:m-2<CR>==gi
vmap <C-j> :m'>+<CR>gv
vmap <C-k> :m-2<CR>gv
" 左右缩进
nmap <tab> V>
nmap <s-tab> V<
vmap <tab> >gv
vmap <s-tab> <gv

" save
nmap <C-S> :update<CR>
vmap <C-S> <C-C>:update<CR>
imap <C-S> <C-O>:update<CR>

"需要安装vim-gnome"
nmap <C-x> "+dd
vmap <C-x> "+d
imap <C-x> <Esc>"+dd==gi

nmap <c-z> :u<CR>      
imap <c-z> <c-o>:u<CR>

" NERDTree
let g:NERDTreeMapActivateNode='l'
let g:NERDTreeMapJumpParent='h'
nmap <Leader>q :q<CR>
nmap <Leader>w :w<CR>
nmap <Leader>g :NERDTreeToggle<CR>
nmap <Leader>t :NERDTree<CR>
nmap <Leader>f :NERDTreeFind<CR>
nmap <Leader>n :noh<CR>

" mutil-cursors
let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_start_key           = 'n'
let g:multi_cursor_select_all_word_key = 'm'
let g:multi_cursor_select_all_key      = 'gn'
let g:multi_cursor_next_key            = 'n'
let g:multi_cursor_prev_key            = 'p'
let g:multi_cursor_skip_key            = 'x'
let g:multi_cursor_quit_key            = '<Esc>'

" unset some key mapping from plugin
unmap <C-i>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
