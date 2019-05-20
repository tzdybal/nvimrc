call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'jodosha/vim-godebug' " NeoVIM required
Plug 'tpope/vim-fugitive'
Plug 'sjl/splice.vim'
Plug 'godoctor/godoctor.vim'
Plug 'rust-lang/rust.vim'
Plug 'kien/ctrlp.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'racer-rust/vim-racer'

call plug#end()

colorscheme desert

set ts=4 sw=4
set hls
set ignorecase
set smartcase
set autowrite

set colorcolumn=120

set swb=usetab,newtab

set exrc
set secure

set guicursor=

let g:racer_experimental_completer = 1

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
au FileType go nmap <leader>gd :GoDoc<CR>

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }
