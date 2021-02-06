call plug#begin('~/.config/nvim/plugged')

source ~/.config/nvim/plugins/sidebar.vim
source ~/.config/nvim/plugins/syntax.vim
source ~/.config/nvim/plugins/complete.vim

" Plugin airline, adds in fancy bar at the bottom
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:airline_powerline_fonts=1
let g:airline_theme='cobalt2'
let g:airline_solarized_bg='dark'
let g:airline#extensions#branch#enabled = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0

" Git commands
Plug 'tpope/vim-fugitive'

" Git changes
Plug 'airblade/vim-gitgutter'

" Control :P
Plug 'ctrlpvim/ctrlp.vim'
" Ignore things that are in the gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
set wildignore+=*/.git/*,*/node_modules/*

" Spotify
Plug 'HendrikPetertje/vimify'

" Editor config
Plug 'editorconfig/editorconfig-vim'

" Color Theme
Plug 'morhetz/gruvbox'

" Quickly rename the file you're working in
Plug 'danro/rename.vim'

" Emmet Plugin, can't live life without this wonder
Plug 'mattn/emmet-vim'

" Make it so tab complets emmet and does noramal tab things
" let g:user_emmet_expandabbr_key='<Leader><Tab>'
" imap <leader><tab> emmet#expandAbbrIntelligent("\<tab>")

" Auto close tags
Plug 'Raimondi/delimitMate'

" Forgetting what the comment sign was? Couldn't be me, but this is for just
" incase of that one person
Plug 'preservim/nerdcommenter'

let g:NERDSpaceDelims = 1
let g:NERDCreateDefaultMappings = 0

nmap <leader>, <plug>NERDCommenterInvert 
xmap <leader>, <plug>NERDCommenterInvert 

" Go lang support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()
let g:go_fmt_command = "goimports"
let g:go_def_mapping_enabled = 0