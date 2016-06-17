"========================================  
" File Name: .vimrc  
" Author: bookzhi 
" Description: Vim配置文档 
" VIM Version: 7.4 
" Date: 2016.6.15  
"========================================  

" 关闭vi兼容模式
set nocompatible              " be iMproved, required

" 文件类型检测功能
filetype off                 " required




"==========================================
"Vundle settings ,and Plugin List 
"==========================================
" 判断操作系统，set the runtime path to include Vundle and initialize
if has('win32') || has('win64')
   set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
	call vundle#begin('$USERPROFILE/vimfiles/bundle/')
else
   set rtp+=~/.vim/bundle/vundle.vim  
	call vundle#begin()  
endif
" ********************call vundle#begin()********************
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'scrooloose/nerdtree'			" 目录树插件
Plugin 'bling/vim-airline'			" 状态栏显示插件
Plugin 'mattn/emmet-vim'			" 原来叫zencoding，扩展html等代码的插件
Plugin 'godlygeek/tabular'			" 对齐符号、文本、排版的插件，:Tab /{符号}
Plugin 'Shougo/neocomplcache.vim'		" 自动补全插件
Plugin 'jelera/vim-javascript-syntax'		" 高亮javascript语法插件
Plugin 'kien/ctrlp.vim'			" 快速查找项目文件
Plugin 'terryma/vim-multiple-cursors'		" 多光标使用插件
Plugin 'tpope/vim-commentary'			" 批量注释
Plugin 'jiangmiao/auto-pairs'			" 自动补全符号
Plugin 'othree/html5.vim'			" 新增标签高亮？
Plugin 'taglist.vim'				" 源代码符号的结构化视图
Plugin 'altercation/vim-colors-solarized'	" 主题solarized
Plugin 'tomasr/molokai'			" 主题molokai

" All of your Plugins must be added before the following line
call vundle#end()            " required
" 启动自动补全
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" 允许插件
" filetype plugin on
" ********************call vundle#end()********************



"==========================================
" General Settings
"==========================================
" 开启语法高亮
syntax enable

" 开启语法高亮
syntax on

" 设置前缀<leader>为’,’
let mapleader=','

" let g:molokai_original = 1

" 开启terminal Color 256色支持
set t_Co=256

" 配色插件以及颜色显示问题
colorscheme solarized
set background=dark
let g:rehash256 = 1

" 判断操作系统，配置字体
if has('win32') || has('win64')
	set guifont=Courier\ New:h10
else
	set guifont=Menlo\12
endif

" 启动VIM窗口大小
"set lines=35 columns=138

" 只对终端影响（默认），若为空继承encoding
set termencoding=utf8
" 判断操作系统，设置编码方式
if has('win32') || has('win64')
	set encoding=prc
else
	set encoding=utf8
endif
" 设置打开文件的编码格式
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030,big5,euc-jp,euc-kr,latin1
set cul

" 状态栏设置,总是显示状态行（Powerline需要2行）
set laststatus=2

" 开启状态行右下角的光标位置显示
set ruler

" 显示行号
set number
set numberwidth=5

" 指定不折行
"set nowrap

" 历史命令
set history=500

" 显示当前VIM模式
set noshowmode

" 显示当前横竖线  
"set cursorline  
set cursorcolumn  

" 永久的tab键占用4个字符，set et ts=4，set sw=4，sts=4
set tabstop=4
" 设置自动对齐空格数
set shiftwidth=4
" 按退格键时可以一次删除4个空格
set softtabstop=4
" 将tab转成space（实际存起来的档案将会是以space，not tab）
set expandtab
" 使用Backspace直接删除tab
set smarttab

" 开启自动缩进
set autoindent
" 智能缩进
set smartindent

" 每行内插入两空行(方便阅读文本)
"set joinspaces 

" 设置代码匹配，如括号匹配
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
"set matchtime=2 

" 忽略大小写匹配
set ignorecase

" 设置代码折叠
" set foldenable
" 自动语法折叠(fdm),其他方法：manual 手工折叠，indent 缩进折叠，expo 表达式折叠，diff 对没有更改的文件折叠，marker 标记折叠
set foldmethod=syntax
" 设置折叠层数
"set foldlevel=99
" 设置折叠区域的宽度
set foldcolumn=0
" 打开折叠
set foldopen=block,hor,mark,percent,quickfix,tag
" 设置自动关闭折叠
"set foldclose=all
" 用空格键开关折叠
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" VIM窗口右下角状态栏显示正在输出的命令（一个完整的命令已经完成的部分）
set showcmd

set showtabline=2

" backup,设置取消备份，禁止临时文件生成
set nobackup
set nowb
set noswapfile
" 备份,到另一个位置. 防止误删, 目前是取消备份
"set backup
"set backupext=.bak
"set backupdir=/tmp/vimbk/

" 高亮显示搜索结果，set hls
set hlsearch
" 开启及时搜索（is），在键入要搜索的字串的同时就开始搜索当前已经键入的部分
set incsearch
" 当搜索时尝试smart
"set smartcase

" 替换时所有的行内匹配都被替换，而不是只有第一个
" set gdefault

" 文件修改之后自动读入
if exists("&autoread")
	set autoread 
endif

"这三种格式支持所有
set fileformats=unix,dos,mac 

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,- 

" 换行不截断单词
set linebreak

" 命令行（在状态行下）的高度，默认为1
set cmdheight=1 

" 字符间(行间)插入的像素行数目
set linespace=0

" 增强模式中的命令行自动完成操作
set wildmenu 

"增强模式打开列表
"set wildmode=list:longest 

" 通过使用: commands命令，告诉我们文件的哪一行被改变过
"set report=0 

" 在被分割的窗口间显示空白，便于阅读
"set fillchars=vert:\ ,stl:\ ,stlnc:\ 

"忽略这些文件扩展名
"set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png,*.swp,*.class

" 在Insert模式下退格键何时可以删除光标之前的字符，选项中以逗号分隔的三项内容分别指定了VIM可以删除位于行首的空格，断行，以及开始进入Insert模式之前的位置
set backspace=eol,start,indent

" 控制移动光标移动到行首或行尾时的操作，光标位于行首时按退格键会往回移动到上一行的行尾，同时在行尾按空格键也会移动到下一行的行首
set whichwrap+=<,>,h,l



"==========================================
" javascript settings  
"==========================================
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery


"==========================================
" html5 settings  
"==========================================
let g:html5_event_handler_attributes_complete = 0


"==========================================
" nerdtree settings  
"==========================================
"自动打开nerdtree
"autocmd VimEnter * NERDTree
"打开新的buffer时自动定位到编辑窗口
"autocmd VimEnter * wincmd w
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <silent> <F2> :NERDTreeToggle<CR>
" 关闭vim时，如果打开的文件除了NERDTree没有其他文件时，它自动关闭，减少多次按:q!
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeMinimalUI=1 		" 不显示帮助面板
let NERDTreeShowBookmarks=1		" 显示书签
"let NERDTreeDirArrows=1 		" 目录箭头 1 显示箭头  0传统+-|号:貌似没用
"let NERDTreeQuitOnOpen=1 		" 打开文件时关闭树
"let NERDTreeShowLineNumbers=1		" 是否默认显示行号
"let NERDTreeShowHidden=1		" 是否默认显示隐藏文件
let NERDTreeMouseMode=2		" 指定鼠标模式（1.双击打开；2.单目录双文件；3.单击打开）
let NERDTreeQuitOnOpen=0         	" 打开文件后是否关闭NerdTree窗口


"==========================================
" airline settings  
"==========================================
"let g:airline_powerline_fonts = 1
" 开启tabline
"let g:airline#extensions#tabline#enabled = 1
" tabline中当前buffer两端的分隔符
"let g:airline#extensions#tabline#left_sep = ' '
" tabline为激活的buffer的两端字符
"let g:airline#extensions#tabline#left_alt_sep = '|'
" tabline中buffer显示编号
"let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#buffline#enabled = 1
"let g:airline#extensions#bufferline#overwrite_variables = 1
" airline主题
"let g:airline_theme = 'powerlineish' 

"==========================================
" ctags settings  
"==========================================
let Tlist_Ctags_Cmd ='/usr/local/Cellar/ctags/5.8/bin/ctags'  "这里比较重要了，设置ctags的位置，不是指向MacOS自带的那个，而是我们用homebrew安装的那个，Centos下配置注销这行即可。


"==========================================
" taglist settings  
"==========================================
let Tlist_Use_Right_Window = 1 "让taglist窗口出现在Vim的右边
let Tlist_File_Fold_Auto_Close = 1 "当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。
let Tlist_Show_One_File = 1 "只显示一个文件中的tag，默认为显示多个
let Tlist_Sort_Type ='name' "Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序
let Tlist_GainFocus_On_ToggleOpen = 1 "Taglist窗口打开时，立刻切换为有焦点状态
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_WinWidth = 32 "设置窗体宽度为32，可以根据自己喜好设置
map <silent> <F9> :TlistToggle <CR>


"==========================================
" emment settings  
"==========================================
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:emmet_html5 = 0

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
" let g:user_emmet_leader_key='<C-Z>'
" let g:user_emmet_expandabbr_key='<Tab>'


"==========================================
" neocompletecache settings  
"==========================================
let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags


"==========================================
" ctrlp settings  
"==========================================
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX

let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux


"==========================================
" solarized settings  
"==========================================
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"


"==========================================
" Vundle Plugin help  
"==========================================
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
