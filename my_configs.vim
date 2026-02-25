source ~/.vim_runtime/plugins_config.vim

let mapleader = ";"

set rnu
highlight CursorLineNr guifg=#050505
set nu
set cin ts=4 sw=4 sts=4 et acd
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030
set cursorline

vnoremap <Leader>y "+y
noremap <Leader>p "+p
" autocmd BufWritePost $MYVIMRC source $MYVIMRC

noremap <Leader>n <c-]>
noremap <Leader>b <c-t>

" Exuberant Ctags
" let g:tagbar_ctags_bin='/usr/bin/ctags'         " Proper Ctags locations
" Universal Ctags
let g:tagbar_ctags_bin='/usr/local/bin/ctags'         " Proper Ctags locations
" let g:tagbar_width=26                           " Default is 40, seems too wide
" noremap <silent> <Leader>y :TagbarToggle      " Display panel with y (or ,y)

" NERDTree toggle with ;nf
nnoremap <Leader>nf :NERDTreeToggle<CR>

" noremap <Up> <Nop>
" noremap <Down> <Nop>
" noremap <Left> <Nop>
" noremap <Right> <Nop>

" nnoremap <f5> :!ctags -R *<CR>
" autocmd BufWritePost * call system("ctags -R *")

" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim_runtime/my_plugins')
" Plug 'airblade/vim-gitgutter'
" Plug 'junegunn/vim-easy-align'
" Plug 'Chiel92/vim-autoformat'
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
" Plug 'buoto/gotests-vim'
" Plug 'universal-ctags/ctags'
" Plug 'ludovicchabant/vim-gutentags'
" Plug 'voldikss/vim-translator'
call plug#end()

" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project', '.tags_root']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" echodoc 
set noshowmode

" " for vim-gitgutter
" GitGutterEnable
" GitGutterLineHighlightsEnable
" GitGutterSignsEnable

" for vim-easy-align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" for vim-autoformat
noremap <F3> :Autoformat<CR>

