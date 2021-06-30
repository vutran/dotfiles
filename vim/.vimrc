"heigthenable line numbers
set number

" enable mouse usage in all modes
set mouse=a

" set color of the line number
highlight LineNr ctermfg=DarkGray

" enable syntax highlighting
syntax enable

" highlight the current cursor line
set cursorline

" set background color to dark
set background=dark

" always show current position
set ruler

" ignore case when searching
set ignorecase

" highlight search results
set hlsearch

" turns on unmodified paste mode
set paste

" turns on auto indentation
set autoindent

" show search matches while typing
set incsearch

" allow backspace
set backspace=2

" set max length
set colorcolumn=100

" lower esc delays
set timeoutlen=1000 ttimeoutlen=0

" shortcut key mappings
map <C-j> 10j
map <C-k> 10k

" toggle NERDTree window with Ctrl-N
map <C-n> :NERDTreeToggle<CR>

" set cursor
if exists('$TMUX')
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" always show status line
set laststatus=2

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"""""""""""""""""""""""""""""""""
" Start Vundle configurations
"""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Shougo/vimproc.vim', { 'do': 'make' }
Plugin 'leafgarland/typescript-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'w0rp/ale'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --go-completer --js-completer --tern-completer --clang-completer' }
" Disabling iCompleteMe below since it interferes with <C-k> mapping
"Plugin 'jerrymarino/iCompleteMe', { 'do': './install.py' }
Plugin 'Quramy/tsuquyomi'
Plugin 'altercation/vim-colors-solarized'
Plugin 'pangloss/vim-javascript'
Plugin 'flowtype/vim-flow', { 'autoload': { 'filetypes': 'javascript' } }
Plugin 'joshdick/onedark.vim'
Plugin 'vim-scripts/npm.vim'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode'
Plugin 'tweekmonster/gofmt.vim'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'kchmck/vim-coffee-script'
Plugin 'klen/python-mode'
Plugin 'wakatime/vim-wakatime'
Plugin 'jparise/vim-graphql'
Plugin 'keith/swift.vim'
Plugin 'styled-components/vim-styled-components'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" onedark configs
let g:onedark_termcolors=256

" set the color scheme
colorscheme onedark

" set ctrlp configurations
let g:ctrlp_by_filename = 1
let g:ctrlp_max_depth = 100
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['tsconfig.json']
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|node_modules',
  \ 'file': '\.exe$|\.so$|\.dll$|\.DS_Store$'
  \ }

" Ale
let g:ale_linters = {
  \ 'javascript': ['tsserver'],
  \ 'json': ['jsonlint'],
  \ 'typescript': ['tsserver'],
  \ 'python': ['flake8'],
  \ 'vim': ['vint']
  \ }
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_fixers = {
  \ 'javascript': ['prettier'],
  \ 'typescript': ['prettier'],
  \ 'typescriptreact': ['prettier'],
  \ 'markdown': ['prettier'],
  \ 'markdown.mdx': ['prettier'],
  \ 'less': ['prettier'],
  \ 'json': ['prettier'],
  \ 'yaml': ['prettier'],
  \}
let g:ale_fix_on_save = 1

" enable vim-airline
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
let g:airline_extensions = ['tabline', 'ale', 'branch', 'ctrlp']
let g:airline#extensions#ale#enabled = 1

" enable Ag (the silver searcher)
let g:ackprg = 'ag --nogroup --nocolor --column'

" tsuquyomi configs
let g:tsuquyomi_javascript_support = 1 " enable tsuquyomi for regular JS files

" vim-javascript configurations
let g:javascript_plugin_jsdoc = 1 " enable jsdoc syntax highlighting
let g:javascript_plugin_flow = 1 " enable flowtype syntax highlighting

" vim-flow
let g:flow#autoclose = 1 " auto-close the flow checker window when no errors are found

" vim-markdown-preview
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'

" python-mode
let g:pymode_folding = 0

" NERDTree configs
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
