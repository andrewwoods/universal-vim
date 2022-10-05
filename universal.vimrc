"
" Universal Vim Configuration
"
" An attempt to provide a solid configuration file that can be
" used between standard Vim and Neovim. Also, this is meant to
" applicable to any type of Vim user - not just developers.
"
" Developed using Vim 8.2 and Neovim 0.7.0
"



"
" ==== Settings ================================================
"

set nocompatible

"
" **** User Interface ***************************
"

" Show real line numbers.
set number

" Number the lines, relative to where you cursor is
set norelativenumber

" Control left edge of window
set numberwidth=6

" Always display the status bar
set laststatus=2


" Custom status line, comment this out when you use a plugin
if has("statusline")
    " Reset to empty string
    set statusline=
    " Display the buffer number
    set statusline+=\<%n\>
    " Base filename
    set statusline+=\ %t
    " Various flags
    set statusline+=\ %m%r%h%w

    " Separate left side from right side
    set statusline+=%=
    " File format/type
    set statusline+=(%{&ff})
    " current line number / total lines
    set statusline+=\ line:%l\/%L
    " Percentage within file
    set statusline+=\ (%p%%)
    " Column number
    set statusline+=\ col:%c
endif

"
" ~~~~ Display guide ~~~~~~~~~~
"

" Remember to add 1 to your desired maximum line length
set colorcolumn=65
" 235 is a very dark grey, good for dark backgrounds
hi ColorColumn ctermbg=235

"
" **** User Experience *************************
"

syntax on



" Look for project specific configuration file
set exrc

" Ability to change buffers without saving first
set hidden

" Error settings
set noerrorbells
set novisualbell

" Briefly jump to a matching bracket, then come back
set showmatch

" Useful when you split your current buffer
set splitbelow
set splitright

"
" ~~~~ Content Settings ~~~~~~~
"

" The number of spaces/columns a tab character represents
set tabstop=4
" How many spaces should Vim indent
set shiftwidth=4
set autoindent
set smartindent
set nosmarttab

" Convert tabs to spaces
set expandtab

set nojoinspaces
set textwidth=0
set wrapmargin=0
set wrap
set linebreak

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=8

set sidescroll=12
set sidescrolloff=12

" Determine how you want special characters to be displayed
set listchars=""
set listchars+=tab:>¬
set listchars+=eol:¶
set listchars+=trail:∙
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:¤

"
" ~~~~ Search Settings ~~~~~~~~~
"

" Go to a search term as you type it
" Use these key strokes to navigate the matches
" previous match: CTRL-T, next match: CTRL-G
set incsearch

"  Highlight all the the search matches.
set nohlsearch

" Allow search to go back to the top/bottom
set wrapscan

" the case of normal letters is ignored
set ignorecase

" When your term has uppercase letters, they'll be honored
set smartcase

"
" **** Backup Settings *************************
"

"set completeopt=menuone,noinsert,noselect
set noswapfile
set nobackup
set nowritebackup


"
" ==== Plugins ================================================
"

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'preservim/tagbar'

call plug#end()


"
" ==== Variables ===============================================
"

let g:netrw_banner = 0
let g:netrw_winsize = 25

"
" ---- FZF Fuzzy Finder ---------
"
let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-v': 'vsplit'
    \ }

let g:fzf_layout = { 'window': {
    \ 'width': 0.9,
    \ 'height': 0.9
    \ }
\ }

let g:fzf_history_dir = '~/.local/share/fzf-history'

" Default Style
let g:fzf_preview_window = ['right:50%', 'ctrl-/']


"
" ---- Startify -----------------
"

"
" ---- Lightline ----------------
"
let g:lightline = {
    \ 'colorscheme': 'jellybeans',
    \ }

"
" ---- UltiSnips ----------------
"


"
" ==== Remaps ==================================================
"



"
" **** UX Mappings *****************************
"


"
" **** Leader Key Mappings *********************
"
let mapleader=" "

nnoremap <Leader>fe :Lexplore!<CR>
nnoremap <Leader>th :terminal<CR>
nnoremap <Leader>tv :vertical terminal<CR>

" Open the buffers list
nnoremap <Leader>ob :Buffers<CR>

" Open any of our project files
nnoremap <Leader>of :Files<CR>

" Open any of our Git managed files
nnoremap <Leader>og :GFiles<CR>

" Search
nnoremap <Leader>sc :Rg

" Search in full screen
nnoremap <Leader>sf :Rg!

" Search lines in All Buffers
nnoremap <Leader>sa :Lines<CR>

" Search lines in Current Buffer
nnoremap <Leader>sb :BLines<CR>

" Git status
nnoremap <Leader>dg :GFiles?<CR>

" Display Marks
nnoremap <Leader>db :Marks<CR>

" Display Mappings
nnoremap <Leader>dm :Maps<CR>

" Choose from the themes (colorschemes) list
nnoremap <Leader>dt :Colors<CR>

"
" ==== Auto Commands ===========================================
"


