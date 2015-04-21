"********************************plugins**************************************
"git clone https://github.com/gmarik/vundle.git  ./vimfiles/bundle/vundle
set rtp+=$VIM/vimfiles/bundle/vundle/
call vundle#begin()

"vundle 
Plugin 'gmarik/vundle'

"tools
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'
Plugin 'Shougo/neocomplcache'
Plugin 'SirVer/ultisnips'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'

"colorscheme
"Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bclear'

"lang
Plugin 'pangloss/vim-javascript'
Plugin 'jQuery'
Plugin 'elzr/vim-json'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'othree/javascript-syntax.vim'
Plugin 'myhere/vim-nodejs-complete'
Plugin 'mattn/emmet-vim'
Plugin 'alpaca-tc/html5.vim'
Plugin 'ap/vim-css-color'
Plugin 'spf13/PIV'
Plugin 'StanAngeloff/php.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'leafgarland/typescript-vim'

call vundle#end()

"********************************ui**************************************

"字体/配色
colorscheme bclear
set guifont=Source\ Code\ Pro:h11.5,Consolas:h12
set guifontwide=YouYuan,YaHei,Consolas:h12 

"去掉工具条、菜单栏、滚动条
set go=aAce              
set guioptions-=m 
set shm+=I
set guioptions-=T
set guitablabel=%N:%M%t

"高亮光标所在的行
set cursorline

if has('gui_running')
    "自动最大化窗口
    au GUIEnter * simalt ~x
    "给 Win32 下的 gVim 窗口设置透明度
    au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 237)
endif

"********************************language**************************************

"语言中文
language chinese
language messages zh_CN.utf-8
set helplang=cn

"********************************encoding**************************************
"默认为 UTF-8 编码
set encoding=utf-8
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,latin1

"********************************system**************************************

"共享剪贴板
set clipboard+=unnamed

"保留历史记录
set history=500

"导入删除菜单脚本，删除乱码的菜单
source $VIMRUNTIME/delmenu.vim

"导入正常的菜单脚本
source $VIMRUNTIME/menu.vim 
 
set nocompatible

"********************************setting**************************************
" 行控制
set linebreak
set textwidth=80
set wrap

"带如下字符不换行
set iskeyword+=_,$,@,%,#,-

"标签页
set tabpagemax=9
set showtabline=2

"控制台响铃
set noerrorbells
set novisualbell
set t_vb= "close visual bell
"行号和标尺
set number
set ruler
set rulerformat=%15(%c%V\ %p%%%)

"命令行于状态行
set ch=1
set ls=2 " 始终显示状态行
set wildmenu "命令行补全以增强模式运行

"高亮、实时搜索
set hlsearch  
set magic     
set showmatch 
set mat=2    
set incsearch
set ignorecase

"制表符
set tabstop=4
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4

"状态栏显示目前所执行的指令
set showcmd 

"缩进
set autoindent
set smartindent

"自动重新读入
set autoread

"插入模式下使用 <BS>、<Del> <C-W> <C-U>
set backspace=indent,eol,start

"设定在任何模式下鼠标都可用
set mouse=a

"自动改变当前目录
"set autochdir

"备份和缓存
set nobackup
set noswapfile

"自动完成
set complete=.,w,b,k,t,i
set completeopt=longest,menu

"定义 <Leader> 为逗号
let mapleader = ","
let maplocalleader = ","

"保证语法高亮
syntax enable
syntax on

filetype plugin indent on

" 配置文件.vimrc更改后自动重新载入使设置生效
autocmd! bufwritepost _vimrc source %

"********************************mapping**************************************

"标签页操作
nmap nt :tabnew<cr>
nmap tg :tabprevious<cr>
nmap nc :tabclose<cr>

"去掉查找后的高亮
nmap nh :noh<cr>

"转换文件类型
nmap 'h :set filetype=html<cr>
nmap 'j :set filetype=javascript<cr>
nmap 'c :set filetype=css<cr>
nmap 'p :set filetype=php<cr>

"在行尾添加;
nmap ; $A;<esc>

"在行尾添加，
nmap <leader><leader> $A,<esc>

"另存为
nmap ss :browse confirm saveas<cr>

"切换窗口
nmap tt <c-w>w

"nerdtree快捷键
nmap ne :NERDTreeToggle<cr>

"新窗口打开配置文件
nmap <leader>e :tabnew $VIM/_vimrc<cr>

"设置重新载入.vimrc快捷键
map <leader>r :source $VIM/_vimrc<cr>

" 按下 Q 不进入 Ex 模式，而是退出
nmap Q :x<cr>

"Tabularize插件对齐快捷键
nmap <Leader>te :Tabularize /=<cr>
nmap <Leader>tm :Tabularize /:<cr>
nmap <Leader>tc :Tabularize /\/\/<cr> "排序注释

"easymotion
nmap f <Plug>(easymotion-prefix)

"vimshell
nmap <Leader>ts :VimShellTab<cr>

"f8唤起命令行工具
nmap <f8> :!cmd <cr>

"********************************plugin setting**************************************
"ultisnips
let g:UltiSnipsSnippetsDir = $VIM."/vimfiles/snippets/"

"NERDTree
let NERDTreeDirArrows=1 "目录箭头 1 显示箭头  0传统+-|号
let NERDTreeShowHidden = 0
let NERDTreeStatusline=''
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$', '\.lnk$']

"neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_camel_case = 1

" syntastic
"let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '•'
let g:syntastic_warning_symbol = '!'
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_enable_highlighting = 0
let g:syntastic_mode_map = { 'passive_filetypes': ['scss', 'slim'] }
let g:syntastic_javascript_syntax_checker="jshint"
let g:syntastic_javascript_jshint_args="--config ".$VIM."/vimfiles/syntax/.jshintrc"

"indent guide
let g:indent_guides_guide_size=1

"markdown
let g:vim_markdown_folding_disabled=1

"jsbeautify
au FileType javascript nmap <Leader>jj :call JsBeautify()<cr>
au FileType html nmap <Leader>jj :call HtmlBeautify()<cr>
au FileType css nmap <Leader>jj :call CSSBeautify()<cr>
au FileType javascript vnoremap <Leader>rj :call RangeJsBeautify()<cr>
au FileType html vnoremap <Leader>rj :call RangeHtmlBeautify()<cr>
au FileType css vnoremap <Leader>rj :call RangeCSSBeautify()<cr>

"********************************syntax**************************************
" 给各语言文件添加 Dict
au FileType html setlocal dict+=$VIM/vimfiles/dict/html.dict
au FileType html setlocal dict+=$VIM/vimfiles/dict/css.dict
au FileType html setlocal dict+=$VIM/vimfiles/dict/javascript.dict
au FileType css setlocal dict+=$VIM/vimfiles/dict/css.dict
au FileType javascript setlocal dict+=$VIM/vimfiles/dict/javascript.dict
au FileType javascript setlocal dict+=$VIM/vimfiles/dict/node.dict
au FileType php setlocal dict+=$VIM/vimfiles/dict/php.dict

" 将指定文件的换行符转换成 dos 格式
au FileType php,javascript,html,xml,json,css,txt,vim,vimwiki set ff=dos

"********************************codeExec**************************************

fun! ExecuteScript()
    if &filetype == 'php'
        exe ':!php %'
    elseif &filetype == 'ruby'
        exe ':!ruby %'
    elseif &filetype == 'javascript'
        if expand('%') == 'gulpfile.js'
            exec ':!gulp'
        else
            exe ':!node %'
        endif
    elseif &filetype == 'typescript'
        exe ':make'
    endif
endfunction

au FileType php,javascript,ruby,typescript nmap <f5> :call ExecuteScript()<cr>

"********************************statusline**************************************

au BufLeave,BufNew,BufRead,BufNewFile,BufEnter * call <SID>SetFullStatusline()

"状态栏颜色
hi StatuslinePath       guibg=#01ABAA guifg=black
hi StatuslineFileName   guibg=#D90073 guifg=black
hi StatuslineFileEnc    guibg=#1BA0E1 guifg=black
hi StatuslineFileType   guibg=#D8C101 guifg=black
hi StatuslineTime       guibg=#A20025 guifg=black
hi StatuslineLocate     guibg=#6A00FF guifg=black

fun! s:SetFullStatusline() 
    setlocal statusline=
    setlocal statusline+=%#StatuslinePath#\ %r%{getcwd()}\\%h " path
    setlocal statusline+=%#StatuslineFileName#\ \%t\                       " file name
    setlocal statusline+=%#StatuslineFileEnc#\ [%{&fileencoding}]\        " file encoding
    setlocal statusline+=%#StatuslineFileType#\ [%{strlen(&ft)?&ft:'**'}]\               "filetype
    setlocal statusline+=%#StatuslineLocate#%=%l/%L,%c  
    setlocal statusline+=\ %#StatuslineTime#%{strftime(\"%m-%d\ %H:%M\")} " current time

endfunction 
