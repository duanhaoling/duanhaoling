set nocompatible              " be iMproved, required
filetype off                  " required

"https://github.com/VundleVim/Vundle.Vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive' "添加git语法支持
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}



"md文档的编辑与预览支持，tabular插件必须在vim-markdown之前
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown' 
Plugin 'suan/vim-instant-markdown'
"最早安装的插件
Plugin 'vim-powerline'
Plugin 'nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required 加载vim自带和插件相应的语法和文件类型相关脚本
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" Put your non-Plugin stuff after this line

"md文件编辑的相关配置
let g:vim_markdown_folding_disabled = 1 "不折叠显示,默认是折叠显示,看个人习惯
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_folding_level = 6 "可折叠的级数,对应md的标题级别
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_emphasis_multiline = 0
set conceallevel=2
let g:vim_markdown_frontmatter=1
syntax on "必须设置,否则md标记不能高亮显示 


let g:mkdp_path_to_chrome = '/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'



syn on                      "语法支持
 
"common conf {{             "通用配置 
set ai                      "自动缩进
set bs=2                    "在insert 模式下用退格键删除
set showmatch               "代码匹配
set laststatus=2            "总是显示状态行
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4            
set tabstop=4 
set smartindent
set softtabstop=4
set cursorline              "为光标所在行加下划线
set number                  "显示行号
set autoread                "文件在vim之外使用过，自动重新读入

"set ignorecase              "检索时忽略大小写
set ignorecase smartcase    "包含大写字母的时候不忽略大小写，只有小写字母时忽略
set fileencodings=utf-8,gbk "使用utf-8或gbk打开文件
set encoding=utf-8
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文
"set foldmethod=syntax       "代码折叠
set foldenable              " 开始折叠
set foldmethod=syntax       " 设置语法折叠
set foldcolumn=0            " 设置折叠区域的宽度
setlocal foldlevel=1        " 设置折叠层数为
set foldlevelstart=99       " 打开文件是默认不折叠代码
set mouse=a                 "启动对鼠标的支持，双击标签挑战，见:help

"set foldclose=all          " 设置为自动关闭折叠                
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
                            " 用空格键来开关折叠
"}}    
   
" conf for tabs 为标签页进行的配置，通过ctrl h/l 切换标签等
let mapleader =','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t :tabe<CR>

"conf for plugins {{  插件相关的配置            
"状态栏的配置
"powerline{
set guifont=PowerlineSymbols\ for\ Powerline 
set nocompatible
set t_Co=256
let g:Powerline_symbols ='fancy'
"let Powerline_symbols='compatible'
"} 
"pathogen是vim用来管理插件的插件
"pathogen{
"call pathogen#infect()
"}

"}}
