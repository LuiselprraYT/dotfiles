set number relativenumber
set nobackup nowritebackup
set noswapfile

set softtabstop=4
set shiftwidth=4
set noexpandtab

syntax enable
set termguicolors

call plug#begin('~/.local/share/nvim/site/plugged')
    Plug 'luukvbaal/nnn.nvim'
    Plug 'brenoprata10/nvim-highlight-colors'
    Plug 'doki-theme/doki-theme-vim'
call plug#end()

lua require("nnn").setup()
lua require('nvim-highlight-colors').setup()

colorscheme natsuki_dark

command! -nargs=0 Sw w !doas tee % > /dev/null

nnoremap <C-n> :NnnPicker<CR>

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map <A-h> <C-w><
map <A-j> <C-w>-
map <A-k> <C-w>+
map <A-l> <C-w>>

map j gj
map k gk
map 0 g0
map $ g$
