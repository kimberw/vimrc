" source my_author.vim
set rnu
highlight CursorLineNr guifg=#050505
set nu
set cin ts=4 sw=4 sts=4 et acd
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030
set cursorline

" for complete
set completeopt=menu,menuone,preview,noselect,noinsert
" autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" autocmd TextChangedI * call ale#completion#Queue()
" autocmd TextChangedI * call feedkeys("\<c-x>\<c-o>", 'i')

vnoremap <Leader>y "+y
noremap <Leader>p "+p
autocmd BufWritePost $MYVIMRC source $MYVIMRC

noremap <Leader>n <c-]>
noremap <Leader>b <c-t>
let g:tagbar_ctags_bin='/usr/bin/ctags'         " Proper Ctags locations
let g:tagbar_width=26                           " Default is 40, seems too wide
" noremap <silent> <Leader>y :TagbarToggle      " Display panel with y (or ,y)

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

nnoremap <f5> :!ctags -R *<CR>
" autocmd BufWritePost * call system("ctags -R *")

set spell
set cinoptions=g0,:0,(0,W4,N-s
" let g:ycm_global_ycm_extra_conf = '~/.vim_runtime/my_plugins/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" " youcomoleteme
" nnoremap <leader>jd :YcmCompleter GoTo<CR>
" " completeparameter
" inoremap <silent><expr> ( complete_parameter#pre_complete("()")
" smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
" imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
" smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
" imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)


" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim_runtime/my_plugins')

" Make sure you use single quotes

" YouCompleteMe
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \ }

" tenfyzhong/CompleteParameter.vim
"Plug 'tenfyzhong/CompleteParameter.vim'

Plug 'elzr/vim-json'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'
Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'buoto/gotests-vim'
Plug 'ycm-core/YouCompleteMe' ", { 'do': './install.py --clang-completer' }

" Initialize plugin system
call plug#end()

" for vim-gitgutter
GitGutterEnable
GitGutterLineHighlightsEnable
GitGutterSignsEnable

" for vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" for vim-autoformat
noremap <F3> :Autoformat<CR>
