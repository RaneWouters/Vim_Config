call plug#begin('~/.config/nvim/plugged')

Plug 'frazrepo/vim-rainbow'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'rhysd/vim-clang-format'
Plug 'octol/vim-cpp-enhanced-highlight'

call plug#end()

"------------
"vim config |
"------------
" For multi-byte character support (CJK support, for example):
" set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1


"set termguicolors

let mapleader="\<space>"

set tabstop=4       " Number of spaces that a <Tab> in the file counts for.

set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.

set encoding=utf-8  "coding utf-8

set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.

set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.

set relativenumber  " The number of line relatively."

set showcmd         " Show (partial) command in status line.

"set showmode         Show the vim mode at the bottom."
set noshowmode

set number          " Show line numbers.

"set cursorline       Highlight this line."

set scrolloff=8     " when scroll the number of the line left."

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.

set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.

set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.

set ignorecase      " Ignore case in search patterns.

set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.

set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.

set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).

set textwidth=60    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.

set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.

set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.

set mouse=a         " Enable the use of the mouse.

set laststatus=2    "the status bar display always

set foldenable      "fold enable
set foldmethod=indent   "manual fold

set noerrorbells

"set listchars=tab:»■,trail:■
set list

"set statusline+=%{coc#status()}

highlight Pmenu ctermbg=111
highlight PmenuSel ctermbg=172 ctermfg=15

set wildmenu
set wildmode=longest:list,full

imap jj <ESC>
inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>

syntax on



"------------------
"---clang_format---
"------------------
"let g:clang_format#auto_format_on_insert_leave=1
let g:clang_format#style_options = { "BasedOnStyle" : "Chromium"}


"--------------------------------------------------------------------------------------------------
"-----------------------------------vim-rainbow_config---------------------------------------------
"--------------------------------------------------------------------------------------------------
let g:rainbow_active = 1

let g:rainbow_load_separately = [
   \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']]  ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']]  ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']]  ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']]  ],
    \]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']


"------------------------------
"-------taglist config---------
"------------------------------
let Tlist_Show_One_File=1    " 只展示一个文件的taglist
let Tlist_Exit_OnlyWindow=1  " 当taglist是最后以个窗口时自动退出
let Tlist_Use_Right_Window=0 " 在右边显示taglist窗口
let Tlist_Sort_Type="name"   " tag按名字排序

"---------------------
"----- NERDTREE ------
"---------------------
imap <F3> :NERDTree<CR>
nmap <F3> :NERDTree<CR>
let g:NERDTreeWinSize=25



"---------------------------------
"-------Coc.vim_config------------
"---------------------------------

autocmd CursorHold * silent call CocActionAsync('highlight')

" TextEdit might fail if hidden is not set.
" set hidden
"
" " Some servers have issues with backup files, see #649.
" set nobackup
" set nowritebackup
"
"" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads
" to noticeable
" " delays and poor user experience.
" set updatetime=300
"
" " Don't pass messages to |ins-completion-menu|.
" set shortmess+=c
"
"" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
" set signcolumn=yes
"
"" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab
" is not mapped by
" " other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"             \ <SID>check_back_space() ? "\<TAB>" :
"                   \ coc#refresh()
"                   inoremap <expr><S-TAB> pumvisible() ?
"                   "\<C-p>" : "\<C-h>"
"
"                   function! s:check_back_space() abort
"                     let col = col('.') - 1
"                       return !col || getline('.')[col - 1]
"                       =~# '\s'
"                       endfunction
"
"                       " Use <c-space> to trigger
"                       completion.
"                       inoremap <silent><expr> <c-space>
"                       coc#refresh()
"
"" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on
" confirm.
" if exists('*complete_info')
"   inoremap <expr> <cr> complete_info()["selected"] !=
"   "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"   else
"     imap <expr> <cr> pumvisible() ? "\<C-y>" :
"     "\<C-g>u\<CR>"
"     endif
"
"     " Use `[g` and `]g` to navigate diagnostics
"     nmap <silent> [g <Plug>(coc-diagnostic-prev)
"     nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
"" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
" nnoremap <silent> K :call <SID>show_documentation()<CR>
"
"function! s:show_documentation()
"  if (index(['vim','help'], &filetype) >= 0)
"      execute 'h '.expand('<cword>')
"        else
"            call CocAction('doHover')
"              endif
"              endfunction
"
"              " Highlight the symbol and its references
"              when holding the cursor.
"              autocmd CursorHold * silent call
"              CocActionAsync('highlight')
"
"" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
"
"augroup mygroup
"  autocmd!
"    " Setup formatexpr specified filetype(s).
"      autocmd FileType typescript,json setl
"      formatexpr=CocAction('formatSelected')
"        " Update signature help on jump placeholder.
"          autocmd User CocJumpPlaceholder call
"          CocActionAsync('showSignatureHelp')
"          augroup end
"
"          " Applying codeAction to the selected region.
"          " Example: `<leader>aap` for current paragraph
"          xmap <leader>a  <Plug>(coc-codeaction-selected)
"          nmap <leader>a  <Plug>(coc-codeaction-selected)
"
"          " Remap keys for applying codeAction to the
"          current line.
"          nmap <leader>ac  <Plug>(coc-codeaction)
"          " Apply AutoFix to problem on the current line.
"          nmap <leader>qf  <Plug>(coc-fix-current)
"
"          " Introduce function text object
"          " NOTE: Requires 'textDocument.documentSymbol'
"          support from the language server.
"          xmap if <Plug>(coc-funcobj-i)
"          xmap af <Plug>(coc-funcobj-a)
"          omap if <Plug>(coc-funcobj-i)
"          omap af <Plug>(coc-funcobj-a)
"
"          " Use <TAB> for selections ranges.
"          " NOTE: Requires 'textDocument/selectionRange'
"          support from the language server.
"          " coc-tsserver, coc-python are the examples of
"          servers that support it.
"          nmap <silent> <TAB> <Plug>(coc-range-select)
"          xmap <silent> <TAB> <Plug>(coc-range-select)
"
"" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
" command! -nargs=? Fold :call     CocAction('fold',
" <f-args>)
"
"" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" " NOTE: Please see `:h coc-status` for integrations with
" external plugins that
" " provide custom statusline: lightline.vim, vim-airline.
" set
" statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
"" Mappings using CoCList:
" Show all diagnostics.
" nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" " Manage extensions.
" nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" " Show commands.
" nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document.
" nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols.
" nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" " Resume latest coc list.
" nnoremap <silent> <space>p  :<C-u>CocListResume<CR> 

let g:python3_host_prog = '/usr/bin/python3.6'

"-------------------------------------------
"------------highlight----------------------
"-------------------------------------------

"let g:cpp_class_scope_highlight = 1
"let g:cpp_member_variable_highlight = 1

