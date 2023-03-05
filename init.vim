call plug#begin('~/.config/nvim/plugged')

Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'rhysd/vim-clang-format'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'puremourning/vimspector'

call plug#end()


            "---------------------------------
            "---------Basic Config------------
            "---------------------------------
set termguicolors

set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936

let mapleader="\<space>"

set tabstop=4               " nNumber of spaces that a <Tab> in the file counts for.

set shiftwidth=4            " Number of spaces to use for each step of (auto)indent.

set encoding=utf-8          " coding utf-8

set expandtab               " Use the appropriate number of spaces to insert a <Tab>.
                            " Spaces are used in indents with the '>' and '<' commands
                            " and when 'autoindent' is on.

set smarttab                " a <Tab> in front of a line inserts blanks according
                            " to 'shiftwidth'. 'tabstop' is used in other place.

set relativenumber          " The number of line relatively.

set showcmd                 " Show (partial) command in status line.

set noshowmode

set number                  " Show line numbers.

set scrolloff=12            " when scroll the number of the line left.

set showmatch               " highlight the brackets matched.

set hlsearch                " highlight the searching result.

set incsearch               " highlight the first target matched timely.

set ignorecase              " Ignore case in search patterns.

set smartcase               " Override the 'ignorecase' option if the search pattern
                            " contains upper case characters.

set autoindent              " Copy indent from current line when starting a new line.

set textwidth=90            " Maximum width of text that is being inserted.

set ruler                   " Show the line and column number of the cursor position.

set background=dark         " When set to "dark", Vim will try to use colors that look
                            " good on a dark background. When set to "light", Vim will
                            " try to use colors that look good on a light background.
                            " Any other value is illegal.

set laststatus=2            " the status bar display always.

set foldenable              " fold enable.
set foldmethod=indent       " manual fold.

set clipboard+=unnamedplus  " system clipboard supported.

syntax on                   " syntax highlight.

" replace 'gui' to 'cterm' when it works in console.

" hi Pmenu guifg=black guibg=#fff078
hi Pmenu guifg=black guibg=#fff143
hi PmenuSel guifg=yellow guibg=purple
hi CocMenuSel guibg=#0070b8
hi CocPumSearch guifg=#51efa0
hi CocPumShortcut guifg=#f963a5

imap jj <ESC>
inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>


            "---------------------------------
            "-------Coc.nvim Config-----------
            "---------------------------------
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>rn <Plug>(coc-rename)

xmap <leader>f  :ClangFormat<CR>
nmap <leader>f  :ClangFormat<CR> 

xmap <leader>d :CocDiagnostics<CR> 
nmap <leader>d :CocDiagnostics<CR>

" remap key --- --- floating window complete
" inoremap <silent><expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
" inoremap <silent><expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"


            "---------------------------------
            "------clang-format Config--------
            "---------------------------------
let g:clang_format#style_options = { "BasedOnStyle" : "Chromium"}


            "---------------------------------
            "------vim-rainbow Config---------
            "---------------------------------
let g:rainbow_active = 1    " rainbow on always.
let g:rainbow_guifgs = ['darkorange', 'yellow', 'springgreen', 'cyan', 'red', 'royalblue']


            "---------------------------------
            "-----------vimspector------------
            "---------------------------------
nmap <F3> :VimspectorReset<CR>
nmap <F4> <Plug>VimspectorRestart
nmap <F5> <Plug>VimspectorContinue
nmap <F6> <Plug>VimspectorRunToCursor
nmap <F8> <Plug>VimspectorStepOver
nmap <F9> <Plug>VimspectorToggleBreakpoint

xmap <F3> :VimspectorReset<CR>
xmap <F4> <Plug>VimspectorRestart
xmap <F5> <Plug>VimspectorContinue
xmap <F6> <Plug>VimspectorRunToCursor
xmap <F8> <Plug>VimspectorStepOver
xmap <F9> <Plug>VimspectorToggleBreakpointg
