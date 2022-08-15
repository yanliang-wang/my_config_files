:set number
set number relativenumber

:setlocal foldmethod=syntax

" no backup (not producing ~ file)
set noundofile
set nobackup
set noswapfile

"  real time search result shown
set incsearch  
" 搜索到文件两端时不重新搜索  
"set nowrapscan  

" encoding setting
set enc=utf-8  
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936 

" auto complete brackets
" imap {<CR> {<C-o>o}<C-o>O
" imap ( ()<ESC>i
" imap < <><ESC>i
" imap " ""<ESC>i
" imap ' ''<ESC>i

" key mapping
nmap <C-j> :m+<CR>==
nmap <C-k> :m-2<CR>==
imap <C-j> <Esc>:m+<CR>==gi
imap <C-k> <Esc>:m-2<CR>==gi
vmap <C-j> :m'>+<CR>gv
vmap <C-k> :m-2<CR>gv

set so=3
:set tabstop=4
:set shiftwidth=4
:set expandtab