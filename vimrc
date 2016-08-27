set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/

call vundle#rc()

filetype plugin indent on

"--------------------------COLORS THEMES----------------------------------
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/vim-tomorrow-theme'

"-----------------------------PLUGINS-------------------------------------
"{}[]''""
Plugin 'tpope/vim-surround'
"Строка состония
Plugin 'itchyny/lightline.vim'
"SuperTab
Plugin 'ervandew/supertab'
"NERDTree-файловый менеджер
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
"Автодополнение для С++
Plugin 'Valloric/YouCompleteMe'

let mapleader=","
"Чтение настроек
map <leader>s :source ~/.vim/vimrc<CR>

syntax on
"Совеместимость с vi
set nocompatible

set background=dark
colorscheme Tomorrow-Night-Eighties
set guifont=Menlo\ Regular:h18
set lines=35 columns=150
set colorcolumn=90
set number
set hidden

"Кол строк
set history=500
set nowrap
set tabstop=4
set shiftwidth=2
set expandtab
set smartindent
set autoindent
"Подсветка скобок
set showmatch

"Подсветка слов при поиске
set hlsearch
set incsearch
set ignorecase

"Отмена поиска с помощью Escape
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

"Автоудаление пробелов
autocmd BufWritePre * :%s/\s\+$//e

"Перемещения между последними открытыми файлами
nnoremap <Leader><Leader> :e#<CR>

"mapping arrows для переключения между окнами
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>


"---------------------SETTINGS Nerdtree--------------------------------
"Открытие с помощью стрелка право
let NERDTreeMapActivateNode='<right>'
"Подсветка скрытых файлов
let NERDTreeShowHidden=1
"hotkey на быстрое открытие/скрытие
nmap <leader>n :NERDTreeToggle<CR>
"Показать текущий файл в дереве
nmap <leader>j :NERDTreeFind<CR>
"Автооткрытие при запуске VIM'a, но без фокуса
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
"Скрытие ненужных файлов
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']
"Выход из vim'a, если открыт только NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


