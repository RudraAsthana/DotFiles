call plug#begin() 

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'ap/vim-css-color'
Plug 'voldikss/vim-floaterm'
Plug 'bling/vim-bufferline' 
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-startify'
Plug 'mattn/emmet-vim'
Plug 'vim-syntastic/syntastic'
Plug 'glepnir/spaceline.vim'
Plug 'vim-scripts/indentLine.vim'
call plug#end()

:set number  

set termguicolors
set encoding=utf-8
set number! 
set number relativenumber 
highlight LineNr term=italic cterm=NONE ctermfg=Grey ctermbg=NONE gui=NONE guifg=#353b45 guibg=NONE
colorscheme onedark 

" Airline Settings 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline#extensions#default#section_truncate_width = {
      \ 'b': 90,
      \ 'x': 70,
      \ 'y': 90,
      \ 'z': 50,
      \ 'warning': 80,
      \ 'error': 80,
      \ }


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <space>n :set number!<CR> 

set splitright
set splitbelow

" open terminal on the bottom 
function! OpenTerminal()
  split term://bash
  resize 20
endfunction

" Start NERDTree and leave the cursor in it.
"autocmd VimEnter * NERDTree

" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p

" Mirror the NERDTree before showing it. This makes it the same on all tabs.
nnoremap <C-n> :NERDTreeMirror<CR>:NERDTreeFocus<CR>

let g:NERDTreeDirArrowExpandable = '󰍝'
let g:NERDTreeDirArrowCollapsible = '󰍟'

" buffer  line configurations 
let g:bufferline_fixed_index =  0 "always first
let g:bufferline_fixed_index =  1 "always second (default)
let g:bufferline_fixed_index = -1 "always last
let g:bufferline_modified = '+'
let g:bufferline_show_bufnr = 1 
let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = '󰍟'
let g:bufferline_modified = '󰄴 ' 


let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
au FileType xhtml,xml  
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'javascript': 'jsxRegion',
    \ }

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0 

"Vim-Devicons Configurations 
let g:webdevicons_enable = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsOS = 'Darwin'

"Startify Configurations
let g:startify_custom_header= [
			\"          ______________ ",
			\"	 / VIM IS LOVE /  ",
			\"  .~.   /_____________/ ",
			\"  /V\\ /   ",
			\" // \\\\     ",
			\"/(   )\\  ",
			\" ^`~'^                     ", 
                        \] 

"Indentline Configurations
"set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nocompatible

" Show a status line
set laststatus=2

" Show the current cursor position
set ruler

" Enable syntax highlighting
syn on
" Mouse {{{
" Send more characters for redraws
set ttyfast

" Enable mouse use in all modes
set mouse=a  
set ttymouse=xterm2

" spaceline vim configurations 
let g:spaceline_seperate_style = 'curve'
let g:spaceline_colorscheme = 'one'
let g:spaceline_scroll_chars = ['⎺', '⎻', '⎼', '⎽', '⎯'] " on Linux
let g:spaceline_custom_vim_status = ' {"n": "󰋜 ","V":"󰊠  ","v":" ","\<C-v>": "󰊠  ","i":"󰏫  ","R":"﯒  ","s":"󰮯 ","t":"󰮯 ","c":"󰞷  ","!":"SE"}'
