" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

runtime! debian.vim

" Vim will load $VIMRUNTIME/defaults.vim if the user does not have a vimrc.
" This happens after /etc/vim/vimrc(.local) are loaded, so it will override
" any settings in these files.
" If you don't want that to happen, uncomment the below line to prevent
" defaults.vim from being loaded.
" let g:skip_defaults_vim = 1

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"filetype plugin indent on

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set ai                          " 自动缩进，新行与前面的行保持—致的自动空格
set aw                          " 自动写，转入shell或使用：n编辑其他文件时，当前的缓冲区被写入
set flash                       " 在出错处闪烁但不呜叫(缺省)
set ic                          " 在查询及模式匹配时忽赂大小写
set nu
set number                      " 屏幕左边显示行号
set showmatch                   " 显示括号配对，当键入“]”“)”时，高亮度显示匹配的括号
set showmode                    " 处于文本输入方式时加亮按钮条中的模式指示器
set showcmd                     " 在状态栏显示目前所执行的指令，未完成的指令片段亦会显示出来
set warn                 " 对文本进行了新的修改后，离开shell时系统给出显示(缺省)
set ws                     " 在搜索时如到达文件尾则绕回文件头继续搜索
set wrap                 " 长行显示自动折行
" lorscheme evening            " 设定背景为夜间模式
filetype plugin on              " 自动识别文件类型，自动匹配对应的, “文件类型Plugin.vim”文件，使用缩进定义文件
set autoindent                  " 设置自动缩进：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
set cindent                     " 以C/C++的模式缩进
set noignorecase                " 默认区分大小写
set ruler                       " 打开状态栏标尺
set scrolloff=5                 " 设定光标离窗口上下边界 5 行时窗口自动滚动
set shiftwidth=4                " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4               " 使得按退格键时可以一次删掉 4 个空格,不足 4 个时删掉所有剩下的空格）
set tabstop=4                   " 设定 tab 长度为 4
set wrap                        " 自动换行显示
syntax enable
syntax on                       " 自动语法高亮
set helplang=cn
filetype indent plugin on
set fileencodings=utf-8,gb2313,gbk
set tabstop=4
set clipboard=unnamed   "设置vim剪贴板跟系统剪贴板互通"

""""" 设置括号自动补齐
""inoremap ' ''<ESC>i
""inoremap " ""<ESC>i
""inoremap ( ()<ESC>i
""inoremap [ []<ESC>i
""inoremap { {<CR>}<ESC>O



