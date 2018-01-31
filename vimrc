"intendation
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"shows input mode
:set showmode

"line numbers
:set nu
:set numberwidth=3

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Highlight matching search patterns
set hlsearch
set incsearch

"maps F2 to SAVE
:map #2 :w<CR>
"maps F3 to NerdTree
:map #3 :NERDTreeToggle<CR>
"swith on/off line numbers
:nnoremap #4 :set nonumber!<CR>


"ruler + options
:set ruler
:set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]
:set laststatus=2

:set showcmd

"line under cursor
:set cursorline

"highlight  
:highlight LineNr ctermfg=grey ctermbg=black guibg=black guifg=grey

"call vim pathogen
":call pathogen#infect()
":call pathogen#helptags()


