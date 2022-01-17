" in terminal type `nvim` to execute and run nvim then type `:echo
" stdpath('config')` to see the location of config file of nvim. This is very
" important file to run config, themes, plugin, key bindings of nvim.
" config file init.vim in ~/.config/nvim/init.vim
"
"*****************************************************************************
"" Vim-Plug core to manage all plugins link ref https://github.com/junegunn/vim-plug
"*****************************************************************************
" Double quote beginning mean this is commented
" for ubuntu the folder to store all plugins is '~/.config/nvim/plugged'
call plug#begin('~/.config/nvim/plugged') 
" Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'
" Make your Vim/Neovim as smart as VSCode
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" expanding abbreviations similar to https://emmet.io/
Plug 'mattn/emmet-vim'
" search files in source code
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" explore sidebar to see folder & files in project
Plug 'scrooloose/nerdtree'
"Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'scrooloose/nerdcommenter'
" show info at statusline 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" auto close tag, type `<table` then `>>` will be 
" <table>
"   `| cursor will be move to | position`
" </table>
Plug 'alvan/vim-closetag'
" comment same with vscode gcl, gcc, gcl
Plug 'tpope/vim-commentary'
" show information of git on statusline and can do git in nvim with G: 
Plug 'tpope/vim-fugitive'
" add blockquotes, tags... surround a selected area
Plug 'tpope/vim-surround'
" onedarkthem less contract
Plug 'dracula/vim',
" highlight syntax js, jsx, css, html5 https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot'
" easy move with jump. Consider NOT use this 
" Plug 'easymotion/vim-easymotion'
" view mark file add +, change ~, delete ~ and deal with that stage or undo
Plug 'airblade/vim-gitgutter'
" Plug 'lilydjwg/colorizer' " Do NOT use this one led to delay when switching between screen 
" show the color of hex, rgb code as background of that color in all files (js, html, css...) test color #f80 #3ff
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
" terminal while using nvim to check git, consider not use this. it lag. use
" `ctrl + z` to temporary exit vim buffer to open terminal to do what ever you
" want then `fg` enter to return back to vim buffer
" Plug 'voldikss/vim-floaterm'
" use s or S then {char}{char} to search below (s) or above (S) {char}{char} 
Plug 'justinmk/vim-sneak'
" Markdown preview file. Once open markdown file in nvim then type
" :MarkdownPreview then browser automatically open it and
" :MarkdownPreviewStop to stop. This combine with joplin terminal note
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" snippets https://www.chrisatmachine.com/Neovim/17-snippets/
Plug 'honza/vim-snippets'
" https://github.com/iberianpig/tig-explorer.vim   
Plug 'iberianpig/tig-explorer.vim'
" Search file telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" High-linghting
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Show function signature when you type
Plug 'ray-x/lsp_signature.nvim'
" prettier format code
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
" ES7 React/Redux/GraphQL/React-Native snippets
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
" Icon for nerdtree
Plug 'ryanoasis/vim-devicons'
" Termimal
Plug 'voldikss/vim-floaterm'
" Tmux
Plug 'christoomey/vim-tmux-navigator'
" Html with emmet 
Plug 'mattn/emmet-vim'
" gruvbox-material and gruvbox theme installation
Plug 'sainnhe/gruvbox-material'
Plug 'morhetz/gruvbox'
" buftabline: buffer tabs on bar
Plug 'ap/vim-buftabline'
" multi cursors
Plug 'mg979/vim-visual-multi', {'branch': 'test'}
" Pluggins for React dev
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
" Nord theme 
Plug 'arcticicestudio/nord-vim'
" PaperColor theme 
Plug 'NLKNguyen/papercolor-theme'
" Everforest theme
Plug 'sainnhe/everforest'
call plug#end()


"*****************************************************************************
"" Basic Setup " https://neovim.io/doc/user/vim_diff.html
"*****************************************************************************"
"set up for plugin hexokinase to show color background of color code in js,
"html, css file. Then we know how does it look like of the color
set termguicolors
let g:Hexokinase_highlighters = ['backgroundfull']
set number relativenumber
set number
set backspace=2                         " Backspace deletes like most programs in insert mode
set tabstop=2
set shiftwidth=2
set hidden
set pumheight=10                        " Makes popup menu smaller
set ruler              			            " Show the cursor position all the time
set cmdheight=1                         " More space for displaying messages can be 2
set wrap                                " Display long lines as just one
" set textwidth=80
set linebreak                            " wrap long lines at a character in 'breakat' rather
" set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion default 500ms
set timeoutlen=30000                      " By default timeoutlen is 1000 ms, popup poppup
" set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set lazyredraw				                  " Avoids updating the screen before commands are completed
set cursorline                          " Enable highlighting of the current line
set showtabline=2                       " Always show tabs
" set backspace=indent,eol,start          " Fix backspace indent
set mouse=a  				                    " Enable your mouse
set mousemodel=popup_setpos
" Use modeline overrides
" set modeline
" set modelines=10

" set notitle
set noerrorbells
set noswapfile
" set colorcolumn=80 
" hi ColorColumn ctermbg=0 guibg=#333333

" highlight clear SignColumn
"hi Pmenu guibg=#3d3d3d gui=NONE
"hi PmenuSel guibg=#232323 gui=NONE
"hi PmenuSbar guibg=#bcbcbc
"hi PmenuThumb guibg=#585858

" Encoding
set encoding=utf-8
set fileencoding=utf-8                  " The encoding written to file
set fileencodings=utf-8
set fileformats=unix

" Searching
set ignorecase                            " ignore Upper or Lowercase
set smartcase                             " depend of pattern lower or Upper
" set hlsearch                              " hightlight search \
" set incsearch                             " set increment next search result

"*****************************************************************************
"" Visual, Theme Settings
"*****************************************************************************
" syntax on

"let g:gruvbox_termcolors=16
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

"For dark version.
set background=dark
" For light version.
"set background=light

let g:everforest_background = 'medium'

colorscheme everforest          "dracula, gruvbox-material, gruvbox, nord, PaperColor 

let g:airline_theme = 'everforest'

hi LineNr term=bold cterm=bold ctermfg=DarkGray ctermbg=2 gui=NONE guifg=DarkGrey guibg=#222831

" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
"let g:gruvbox_material_background = 'medium'

" turn on airline powerlin symbol by downloand install fonts https://github.com/powerline/fonts via ./install.sh in folder fonts-master https://www.youtube.com/watch?v=-r6Sj70Ziws&ab_channel=TheFrugalComputerGuy
let g:airline_powerline_fonts = 1
" https://jdhao.github.io/2018/09/29/Switching_buffers_quickly_Neovim/
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#buffer_nr_show = 0 "1 to show buffer no.

""" powerline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = 'ln'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.dirty='⚡'
"let g:airline_symbols.colnr='col'"


" hightlight comment in italic 
" hi Comment cterm=italic

" hightlight background transparent background for nvim
hi! Normal ctermbg=NONE guibg=NONE 
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

" Set floaterm window's background to black
hi Floaterm guibg=#393E46
" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guibg=#222831 guifg=#00ADB5

"Floaterm is the termimal popup while using vim, we can use to check git... config
let g:floaterm_keymap_toggle = '<leader>t'
"let g:floaterm_keymap_toggle = '<F1>'
"let g:floaterm_keymap_next   = '<F2>'
"let g:floaterm_keymap_prev   = '<F3>'
"let g:floaterm_keymap_new    = '<F4>'
let g:floaterm_gitcommit='floaterm'
let g:floaterm_autoinsert=1
let g:floaterm_width=0.8
let g:floaterm_height=0.8
let g:floaterm_wintitle=0
let g:floaterm_autoclose=1
" /Floaterm

" vim-sneak use to move quick to any word within the screen from current
" cursor position with pattern `s{character}{character}` example: stv, sau...
let g:sneak#label = 1
" case insensitive sneak
let g:sneak#use_ic_scs = 1
" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1
" remap so I can use , and ; with f and t
" map gS <Plug>Sneak_,
" map gs <Plug>Sneak_;
"/vim-neak
 
" Autoclose Tags
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.erb'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'
" <Link></Link>  & <link></link> interger 0 | 1
" /Autoclose Tags

" gitgutter
let g:gitgutter_preview_win_floating = 1
" un map all keys bindings of gitgutter then will map it again
let g:gitgutter_map_keys = 0

" Terminator
let g:floaterm_keymap_new    = '<F9>'
let g:floaterm_keymap_prev   = '<F10>'
let g:floaterm_keymap_next   = '<F11>'
let g:floaterm_keymap_toggle = '<F12>'

" nmap ght <Plug>(GitGutterToggle) 
nmap ghp <Plug>(GitGutterPreviewHunk) 
nmap ghu <Plug>(GitGutterUndoHunk)   
nmap ]c <Plug>(GitGutterNextHunk)
nmap [c <Plug>(GitGutterPrevHunk)

" nmap ghs <Plug>(GitGutterStageHunk) 
" xmap ghS <Plug>(GitGutterStageHunk)
" xmap nc <Plug>(GitGutterTextObjectOuterVisual)
" omap nc <Plug>(GitGutterTextObjectOuterPending)
" xmap n% <Plug>(MatchitVisualTextObject)

" /gitgutter

"vim-fugitive'
"deal with git stage, unstage, commit, push, solve git conflict
"- to see status of git then use below comment
nmap gs :G<CR>
" move cursor to the file then press `u` for unstage, `s` for stage each file
" or all files
" use G:commit to commit change and G:push to push commit to remote
" Deal with merger conflict press `dd` to go to buffer to solve conflict
" link http://vimcasts.org/episodes/fugitive-vim-resolving-merge-conflicts-with-vimdiff/
" :diffget //2 - fetches the hunk from the target parent (on the left)
" :diffget //3 - fetches the hunk from the merge parent (on the right)
nmap gf :diffget //2<CR> 
nmap gj :diffget //3<CR>
" set :Gdiffsplit to 3 columns vertical
set diffopt+=vertical

"/vim-fugitive'

" Preview markdown file 
nmap <C-m> <Plug>MarkdownPreview

" set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" set filetypes as typescriptreact
autocmd FileType typescriptreact setlocal commentstring={/*\ %s\ */}
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

" dark blue
hi tsxTagName guifg=#84A9AC 
hi tsxComponentName guifg=#84A9AC 
hi tsxCloseComponentName guifg=#84A9AC 

" orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxCloseTagName guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575

" yellow
hi tsxAttrib guifg=#F8BD7F cterm=italic

" light-grey
hi tsxTypeBraces guifg=#999999

" dark-grey
hi tsxTypes guifg=#666666

hi ReactState guifg=#C176A7
hi ReactProps guifg=#D19A66
hi ApolloGraphQL guifg=#CB886B
hi Events ctermfg=204 guifg=#56B6C2
hi ReduxKeywords ctermfg=204 guifg=#C678DD
hi ReduxHooksKeywords ctermfg=204 guifg=#C176A7
hi WebBrowser ctermfg=204 guifg=#56B6C2
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

"*****************************************************************************
"" Abbreviations
"*****************************************************************************

" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q

"*****************************************************************************
"" Commands
"*****************************************************************************

" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************

" The PC is fast enough, do syntax highlight syncing from start unless 200 lines
augroup vimrc-sync-fromstart
autocmd!
autocmd BufEnter * :syntax sync maxlines=200
augroup END

" Remember cursor position
augroup vimrc-remember-cursor-position
autocmd!
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

autocmd FileType scss setl iskeyword+=@-@

"*****************************************************************************
"" Mappings, nnore = nonrecursive (De quy) mean call function inside function
" create loop and can be infinited loop
" Commands                        Mode
" --------                        ----
" nmap, nnoremap, nunmap          Normal mode
" imap, inoremap, iunmap          Insert and Replace mode
" vmap, vnoremap, vunmap          Visual and Select mode
" xmap, xnoremap, xunmap          Visual mode
" smap, snoremap, sunmap          Select mode
" cmap, cnoremap, cunmap          Command-line mode
" omap, onoremap, ounmap          Operator pending mode
"*****************************************************************************

" Map <leader> to <space>
let mapleader=' '   
" map redo ctrl + r 
" nnoremap U <C-R>

" Basic mappings
" inoremap jj <ESC>
" inoremap jk <ESC>
" xnoremap jj <ESC>
" xnoremap jk <ESC>
" xnoremap jk <Esc>
" xnoremap kj <Esc>
" nnoremap j jzz
" nnoremap k kzz
" nnoremap # #zz
" nnoremap * *zz
" nnoremap n nzz
" nnoremap N Nzz
" nnoremap G Gzz

" Better nav for omnicomplete when go up and down in menu popup
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Type Ctrl + u to exit insert mode 
inoremap <C-u> <ESC> 
" provide hjkl movements in Insert mode via the <Alt> modifier key
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l
inoremap <A-b> <C-o>b
inoremap <A-w> <C-o>w

" Use alt + hjkl to resize windows
" nnoremap <M-j>    :resize -2<CR>
" nnoremap <M-k>    :resize +2<CR>
" nnoremap <M-h>    :vertical resize -2<CR>
" nnoremap <M-l>    :vertical resize +2<CR>

" TAB in general mode will move to text buffer
" nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
" nnoremap <S-TAB> :bprevious<CR>
" Better window navigation ctrl+h,j,k,l instead of ctrl+w+h,j,k,l
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

" nnoremap <Leader>o o<Esc>^Da
" nnoremap <Leader>O O<Esc>^Da

" terminal in vim, stop
" nmap <silent><leader>z <C-z> 

" Yank to Vim + OS clipboard by installing xclip https://ubuntu.pkgs.org/20.04/ubuntu-universe-amd64/xclip_0.13-1_amd64.deb.html
" Copy in Visual mode
vmap <leader>c :!xclip -f -sel clip<CR>
" Paste in normal mode
map <leader>v mz:-1r !xclip -o -sel clip<CR>`z

"clone paragraph inside a block `}` and aste it right under empty row
nnoremap cp yap}p

" format code inside a block
noremap <silent><leader>a =ip

" Jump to something
" search and highlight 
nnoremap <silent><leader>f /
" clear highlight from search by /
nnoremap <silent><leader><cr> :noh<cr>
" Open files in git repo 
nnoremap <silent><leader>p :GFiles --cached --others --exclude-standard<CR>
" Open files in current folder
nnoremap <silent><leader>o :Files<CR>
" Open list of buffers (window open)
nnoremap <silent><leader>b :Buffers<CR>

" Create NEW buffer
" nnoremap <silent><leader>n :e! ~/buff<CR>
" close buffer. Consider to active this due to it will close buffer 
nnoremap <silent><leader>q :bd!<cr>
" close window when split window
" nnoremap <silent><leader>q :close<cr>
" EXIT vim
nnoremap <silent><leader>e :q!<cr>
" Open list of Files History
nnoremap <silent><leader>i :History<CR>
" Open list of Commands History
nnoremap <silent><leader>y :History:<CR>
" Open search by 'key word etc: class name, #id, function name...' entire current folder
nnoremap <silent><leader>g :Rg<CR>
" nnoremap <silent><leader>a 1Ag<CR>
" nnoremap <silent>ng :Ag<CR>
" map % to jum faster better open and close of {, [, (
nnoremap <silent><leader>j %
vnoremap <silent><leader>j %

" Fast save
nnoremap <silent><leader>s :w!<cr>
" split current window vertical on the right 'set splitright'  
nnoremap <silent><Leader>w :vsplit<CR>
" split current window horizontal on bottom 'set splitbelow'
nnoremap <silent><Leader>W :split<CR>
" quick jump to first non-blank of row
nnoremap <silent><leader>h ^
" quick jump to last non-blank of row
nnoremap <silent><leader>l $


" In Visual Mode Indent shifting > and <
vnoremap < <gv
vnoremap > >gv

  "In Visual Mode move line up, down when in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" In normal mode map to go faster up, down
nnoremap J 5j
nnoremap K 5k

" Working with NERDTree
" press `m` to call menu @ cursor position to (add,delete file)
nnoremap <silent><F2> :NERDTreeFind<CR>
nnoremap <silent><F3> :NERDTreeToggle<CR>

" remap j and k to move down each line of wrapping section (code,text)  
nnoremap j gj
nnoremap k gk

" Do emmet for Pug emmet for example type div then pressj<Tab> then become <div></div>
imap j<Tab> <C-Y>,

" GoTo code navigation, super cool to work with source code 
" go to definition for example go to the function where it is exported to use
nmap <silent>gd <Plug>(coc-definition)
" back to previous location. Very useful when using gd then <C-o> to go back 
nmap <silent>gb <C-o>
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
" Go to references where that function being used in the source code
nmap <silent>gr <Plug>(coc-references)
nmap <silent><F12> <Plug>(coc-definition)

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent>[g <Plug>(coc-diagnostic-prev)
nmap <silent>]g <Plug>(coc-diagnostic-next)


" Use H to show documentation in preview window when hover.
nnoremap <silent> sd :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Tmux mapping
"let g:tmux_navigator_no_mappings = 1

"nnoremap <silent> <c-b>% :TmuxNavigateLeft<cr>
"nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
"nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
"nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
"nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Use K to show documentation in preview window
nnoremap <silent> sd :call <SID>show_documentation()<CR>
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Comment code
vmap <silent> <C-_> <plug>NERDCommenterToggle
nmap <silent> <C-_> <plug>NERDCommenterToggle

" Tab mapping
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Emmet mode 
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key=',,'

" Buftabline
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>
" To switch buffers by their ordinal number (|g:buftabline_numbers| = 2) you can map keys to the |<Plug>| mappings provided by this plugin: >
nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)
nmap <leader>0 <Plug>BufTabLine.Go(10)

"On Mac OS, you probably want to use a |<D-| mapping instead, which will emulate the standard Cmd+1, Cmd+2, etc. keybindings for this feature: >
"nmap <D-1> <Plug>BufTabLine.Go(1)
"nmap <D-2> <Plug>BufTabLine.Go(2)
"nmap <D-3> <Plug>BufTabLine.Go(3)
"nmap <D-4> <Plug>BufTabLine.Go(4)
"nmap <D-5> <Plug>BufTabLine.Go(5)
"nmap <D-6> <Plug>BufTabLine.Go(6)
"nmap <D-7> <Plug>BufTabLine.Go(7)
"nmap <D-8> <Plug>BufTabLine.Go(8)
"nmap <D-9> <Plug>BufTabLine.Go(9)
"nmap <D-0> <Plug>BufTabLine.Go(10)
 "or to go to the last buffer:
"nmap <D-0> <Plug>BufTabLine.Go(-1)


nnoremap <C-z> u

"*****************************************************************************
"" Custom configs
"*****************************************************************************

"fzf.vim
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__
let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

" Instal fzf with preview hightlight color install bat as link color preview
" https://github.com/junegunn/fzf.vim#dependencies    
" https://awesomeopensource.com/project/yuki-yano/fzf-preview.vim
" For syntax-highlighted preview, install bat https://awesomeopensource.com/project/sharkdp/bat
" Ag requires The Silver Searcher (ag)
" Rg requires ripgrep (rg)

" The Silver Searcher
if executable('ag')
  let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
  set grepprg=ag\ --nogroup\ --nocolor
endif

" ripgrep
if executable('rg')
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!.git/*"'
  set grepprg=rg\ --vimgrep
  command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
endif

" NERDTree configuration
" let g:NERDTreeChDirMode=2
" let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
" let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
" let g:NERDTreeShowBookmarks=1
" let g:nerdtree_tabs_focus_on_files=1
" let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
" let g:NERDTreeWinSize = 50
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite

" Command :CocConfig to open coc-settings.json file
" COC. Please remember run command $:CocInstall <extensions> to install
" extensions. Examples: CocInstall coc-eslint
let g:coc_global_extensions = ['coc-css', 'coc-eslint', 'coc-json', 'coc-tsserver','coc-stylelintplus','coc-snippets', 'coc-pairs']

" bind `tab` for autocompletion https://stackoverflow.com/questions/67370086/how-to-remap-coc-nvim-autocomplete-key
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"
" coc-spippets how to use? 1. type command `:CocCommand snippets.editSnippets`
" to open the list of snippets
" fix this error https://github.com/neovim/neovim/issues/12234 . python3
" --version. Then install python3 as link https://phoenixnap.com/kb/how-to-install-python-3-ubuntu . Then in nvim run `:checkhealth provider` then install pip
" sudo apt-get install python3-pip     then install below
"python3 -m pip install --user --upgrade pynvim
" format scss
" autocmd FileType scss setl iskeyword+=@-@
" Run the command to approve eslint :CocCommand eslint.showOutputChannel -->
" select 1 to allow anywhere

" fold nvim
" select range by `v` then to fold type zf and unfold is stand at fold area
" then type zo 
set foldmethod=marker

" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
"command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
