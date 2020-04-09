""""General configuration""""

set encoding=utf-8
set fileencoding=utf-8
set number
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir
set backspace=indent,eol,start
filetype plugin on

:imap ( ()<left>
:imap { {}<left>
:imap [ []<left>


""""Vim Plugins""""

call plug#begin('~/.vim/plugged')
" Vim themes
Plug 'sainnhe/edge'

" Vim utils
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()



""""Plugin configurations""""

" NERDTree
:nnoremap <C-g> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" ALE
let g:ale_sign_error = "❌"
let g:ale_sign_warning = "⚠️'"
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\}

let g:ale_linters = {'javascript': ['eslint'], 'python': ['pylint'], 'go': ['gopls'], 'php': ['phpcs'], 'css': ['eslint'], 'sass': ['sasslint'], 'ruby': ['rubocop']}
let g:ale_fixers = {'javascript': ['prettier'], 'python': ['black'], 'go': ['goimports'], 'css': ['prettier'], 'sass': [], 'php': [], 'ruby': ['rubocop']}

" If you configure g:ale_pattern_options outside of vimrc, you need this.
let g:ale_pattern_options_enabled = 1
let g:ale_fix_on_save = 1


" vim-airline
let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'

" vim-polyglot -> Python
let g:python_highlight_all = 1

""""Theme configurations""""

set termguicolors
set background=dark
let g:edge_style = 'neon'
let g:edge_disable_italic_comment = 1

colorscheme edge

