"set number
"set relativenumber
"set tabstop=4
"set shiftwidth=4
"set softtabstop=4
"set smarttab
"set autoindent
"set mouse=a
"set tabstop=2 
"set encoding=UTF-8
"
"
"" vim hangs when open tsc
"" https://vi.stackexchange.com/a/25090
"set re=2
"
"colorscheme murphy 
"
"syntax on
"filetype plugin indent on
"
"" - tagbar issue: Error message - Ctags doesn't seem to be Exuberant Ctags!
"" https://github.com/preservim/tagbar/issues/365#issuecomment-262195934
"let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
"
"call plug#begin()
"
"
""====================
""=====  Inspector
""====================
"
"Plug 'https://github.com/preservim/nerdtree' " NerdTree for file tree
"Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
"
""====================
""=====  UI
""====================
"
"" VIM-UI
"Plug 'https://github.com/vim-airline/vim-airline' "Status bar
"Plug 'https://github.com/vim-airline/vim-airline-themes' " Status bar
"
"" Theme
"" https://github.com/morhetz/gruvbox
"Plug 'https://github.com/gruvbox-community/gruvbox'
"
"Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
"
"
""====================
""=====  c/cpp
""====================
"
"Plug 'https://github.com/rhysd/vim-clang-format'
"
"
"" ref: https://prettier.io/docs/en/vim.html
"" CocConfig <---- open coc-settings.json
"" CocInstall <PackageName>
"" coc-prettier
"Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'} " Auto Completion
"
""====================
""=====  HTML/JSX
""====================
"
"" https://github.com/mattn/emmet-vim
"" <c-y>,
"Plug 'https://github.com/mattn/emmet-vim'
"
""====================
""=====  CSS
""====================
"Plug 'https://github.com/ap/vim-css-color' " SS Color Preview
"Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
"
"" TailwindCSS
"Plug 'https://github.com/williamboman/mason.nvim'
"Plug 'https://github.com/williamboman/mason-lspconfig.nvim'
"
""====================
""=====  Language Server
""====================
"
"Plug 'https://github.com/neovim/nvim-lspconfig'
"
""====================
""=====  Utils
""====================
"
"" Plug 'https://github.com/jiangmiao/auto-pairs'
"Plug 'https://github.com/tpope/vim-surround' " Surrounding ysw)
"Plug 'https://github.com/mg979/vim-visual-multi' " CTRL + N for multiple cursors
"Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
"
"call plug#end()
"
"
""ref: https://github.com/neoclide/coc.nvim/wiki/Completion-with-sources"
"" use <tab> for trigger completion and navigate to the next complete item
""function! CheckBackspace() abort
""  let col = col('.') - 1
""  return !col || getline('.')[col - 1]  =~# '\s'
""endfunction
""
""inoremap <silent><expr> <Tab>
""      \ coc#pum#visible() ? coc#pum#next(1) :
""      \ CheckBackspace() ? "\<Tab>" :
""      \ coc#refresh()
"
"set termguicolors
"colo gruvbox
"
"set completeopt-=preview " For No Previews
"
"
""===============================================
""============   Key Mapping
""===============================================
"
"" # NERD TREE
""  C --> ctrl key
""  S --> Shift key
""  A --> Alt key
""  F1-10 --> Are the function keys
"nnoremap <silent> <Leader>t :NERDTreeToggle<cr>
"nnoremap <silent> <Leader>f :NERDTreeFind<cr>
"
"" # TagBar
"nnoremap <silent> <Leader>d :TagbarToggle<cr>
"
"" ## Prettier
"command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
"" command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
"
"command! -nargs=* T split | wincmd j | resize 20 | terminal <args>
"
"" vmap <leader>f  <Plug>(coc-format-selected)
"" nmap <leader>f  <Plug>(coc-format-selected)
"
""===============================================
""============  Neovim-Terminal
""===============================================
"
"" https://stackoverflow.com/a/63909865
"augroup neovim_terminal
"    autocmd!
"    " Enter Terminal-mode (insert) automatically
"    autocmd TermOpen * startinsert
"    " Disables number lines on terminal buffers
"    autocmd TermOpen * :set nonumber norelativenumber
"    " allows you to use Ctrl-c on terminal window
"    autocmd TermOpen * nnoremap <buffer> <C-c> i<C-c>
"		" autocmd VimEnter * ++nested split term://zsh
"		autocmd TermClose * if !v:event.status | exe 'bdelete! '..expand('<abuf>') | endif
"augroup END
"
"command! -nargs=* T belowright split | terminal <args>
"command! -nargs=* VT vsplit | terminal <args>
""noremap <C-h> :belowright<SPACE>split<BAR>terminal<CR>
""noremap <Leader>y :belowright<SPACE>split<BAR>terminal<CR>
"cnoremap term belowright<SPACE>split<BAR>terminal
"
