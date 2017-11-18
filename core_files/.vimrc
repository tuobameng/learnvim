"文件编码
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1   "fileencoding表示保存文件时的默认文件编码
set fileencoding=utf-8  "fileencodings表示vim读取文件时，采用的编码识别序列，从左往右匹配。

"很多插件都会要求的配置检测文件类型 
:filetype on 
:filetype plugin on 
:filetype indent on 

"pathogen,第一句: 将 pathogen 自身也置于独立目录中，需指定其路径; 第二句:运行 pathogen
runtime bundle/vim-pathogen-master/autoload/pathogen.vim
execute pathogen#infect()

"传说中的去掉边框用下边这一句
set go= 

"设置背景色，每种配色有两种方案，一个light、一个dark 
set background=light 

"打开语法高亮 
syntax on 

"显示行号 
set number 

"在windows版本中vim的退格键模式默认与vi兼容，与我们的使用习惯不太符合，下边这条可以改过来 
set backspace=indent,eol,start 

"用空格键替换制表符 
:set expandtab 

"制表符占4个空格 
set tabstop=4

"默认缩进4个空格大小 
set shiftwidth=4 

"一行不超过80个字符
set textwidth=79

"自动缩进 
set autoindent

"以unix格式保存文件
set fileformat=unix

"增量式搜索 
set incsearch 

"高亮搜索 
set hlsearch 

"设置vim打开时的大小
set lines=35 columns=118

"ctags
"eg. :set tags=F:\C++code\tags
set tags=tags;
set autochdir

"pydoc
if has("win32")
  let g:pydoc_cmd = 'python3 -m pydoc'
"let g:pydoc_cmd="D:\\ProgrammingTool\\python\\python35\\Lib\\pydoc.pyd"
endif

"jedi
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

"python-mode
"开启警告
let g:pymode_warnings = 0
"保存文件时自动删除无用空格
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1
"显示允许的最大长度的列
let g:pymode_options_colorcolumn = 1
"设置QuickFix窗口的最大，最小高度
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 10
"使用python3
let g:pymode_python = 'python3'
"使用PEP8风格的缩进
let g:pymode_indent = 1
"取消代码折叠
let g:pymode_folding = 0
"开启python-mode定义的移动方式
let g:pymode_motion = 1
"启用python-mode内置的python文档，使用K进行查找
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'
"自动检测并启用virtualenv
let g:pymode_virtualenv = 1
"不使用python-mode运行python代码
let g:pymode_run = 0
"let g:pymode_run_bind = '<Leader>r'
"不使用python-mode设置断点
let g:pymode_breakpoint = 0
"let g:pymode_breakpoint_bind = '<leader>b'
"启用python语法检查
let g:pymode_lint = 1
"修改后保存时进行检查
let g:pymode_lint_on_write = 0
"编辑时进行检查
let g:pymode_lint_on_fly = 0
let g:pymode_lint_checkers = ['pyflakes', 'pep8']
"发现错误时不自动打开QuickFix窗口
let g:pymode_lint_cwindow = 0
"侧边栏不显示python-mode相关的标志
let g:pymode_lint_signs = 0
"let g:pymode_lint_todo_symbol = 'WW'
"let g:pymode_lint_comment_symbol = 'CC'
"let g:pymode_lint_visual_symbol = 'RR'
"let g:pymode_lint_error_symbol = 'EE'
"let g:pymode_lint_info_symbol = 'II'
"let g:pymode_lint_pyflakes_symbol = 'FF'
"启用重构
let g:pymode_rope = 1
"不在父目录下查找.ropeproject，能提升响应速度
let g:pymode_rope_lookup_project = 0
"光标下单词查阅文档
let g:pymode_rope_show_doc_bind = '<C-c>d'
"项目修改后重新生成缓存
let g:pymode_rope_regenerate_on_write = 1
"开启补全，并设置<C-Tab>为默认快捷键
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Tab>'
"<C-c>g跳转到定义处，同时新建竖直窗口打开
let g:pymode_rope_goto_definition_bind = '<C-c>g'
let g:pymode_rope_goto_definition_cmd = 'vnew'
"重命名光标下的函数，方法，变量及类名
let g:pymode_rope_rename_bind = '<C-c>rr'
"重命名光标下的模块或包
let g:pymode_rope_rename_module_bind = '<C-c>r1r'
"开启python所有的语法高亮
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
"高亮缩进错误
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"高亮空格错误
let g:pymode_syntax_space_errors = g:pymode_syntax_all

"主题颜色
colorscheme darkblue

"将80个字符显示的线去掉的话，想显示的话设置成80就可以了
set colorcolumn=80

"更改80字符的线的颜色
highlight ColorColumn ctermbg=black guibg=black

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' }, 'python': { 'left': '#','right': '' }}
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

"authorinfo
let g:vimrc_author='clivesun' 
let g:vimrc_email='clivesunmeng@gmail.com' 
"let g:vimrc_homepage='http://www.vimer.cn' 
nmap <F8> :AuthorInfoDetect<cr> 

"一键运行
au BufRead *.py map <buffer> <F1> :w<CR>:! python % <CR>

"单步调试
au BufRead *.py map <buffer> <F2> :w<CR>:! python -m ipdb % <CR>

"taglist
:map <F12> :!ctags -R<CR>
:map <F3> :TlistToggle<CR>

"yapf
autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>

"nerdtree
map <F4> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""
" Tag list (ctags)
""""""""""""""""""""""""""""""
if has("win32")                "设定windows系统中ctags程序的位置
let Tlist_Ctags_Cmd = 'ctags'
elseif MySys() == "linux"              "设定linux系统中ctags程序的位置
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
endif
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口 
