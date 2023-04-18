""""""""""
"  Plug  "
""""""""""
"let g:plug_url_format='https://git::@hub.fastgit.org/%s.git'
call plug#begin('~/.vim/plugged')
Plug 'voldikss/vim-translator',{'on':'TranslateW'} "翻译
Plug 'scrooloose/nerdtree', {'on':'NERDTreeToggle'}  "树型目录
Plug 'vim-airline/vim-airline' "美化插件
Plug 'vim-airline/vim-airline-themes' "主题美化
"Plug 'enricobacis/vim-airline-clock' "时间
Plug 'ryanoasis/vim-devicons' "图标
Plug 'valloric/youcompleteme' "代码自动补全
Plug 'honza/vim-snippets' "补全
Plug 'sirver/ultisnips' "补全
Plug 'chun-yang/auto-pairs' "括号
Plug 'tpope/vim-surround' "括号
Plug 'sudar/comments.vim' "注释
Plug 'chiel92/vim-autoformat',{'on':'Autoformat'} "代码格式化
Plug 'junegunn/fzf',{'on':'FZF'} "sudo apt install fzf
Plug 'rking/ag.vim',{'on':'Ag'} "sudo apt-get install silversearcher-ag
Plug 'majutsushi/tagbar',{'on':['Tagbar']} "sudo apt install universal-ctags
Plug 'lervag/vimtex', {'for':'tex'} "latex
Plug 'tweekmonster/startuptime.vim', {'on':['StartupTime']} "启动时间
call plug#end()

"""""""""""""
"  airline  "
"""""""""""""
let laststatus = 2
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
let g:Powerline_symbols='fancy'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"let airline#extensions#lsp#show_line_numbers = 1
let g:airline#extensions#clock#format = '%H:%M:%S'

"""""""""""""""""""
"  youcompleteme  "
"""""""""""""""""""
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
set completeopt=menu,menuone
let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_auto_trigger = 2 "not to load .ycm_extra_conf
let g:ycm_key_invoke_completion = '<c-j>'
let g:ycm_key_list_stop_completion = ['<c-k>']
let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/third_party/ycmd/.ycm_extra_conf.py' "C++ boost

""""""""""""""
"  snippets  "
""""""""""""""
let g:UltiSnipsExpandTrigger = '<c-j>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"let g:UltiSnipsSnippetDirectories=['~/.vim/plugged/vim-snippets/UltiSnips']

""""""""""""
"  vimtex  "
""""""""""""
let g:tex_flavor = 'latex' "文件后缀
let g:vimtex_view_method='skim' "视图程序
"let g:vimtex_view_method='mupdf' "视图程序
let g:vimtex_mappings_enabled = 1 "使用自带快捷键
let g:vimtex_compiler_latexmk_engines = {'_':'-xelatex'} "中文引擎
let g:vimtex_compiler_latexrun_engines ={'_':'xelatex'} "中文引擎


""""""""""
"  nerd  "
""""""""""
let g:NERDTreeSortOrder = ['\/$', '*', '[[-timestamp]]']

""""""""""""""""
"  translator  "
""""""""""""""""
let g:translator_default_engines = ['bing']


"语法高亮
syntax enable
"图标字体
set guifont=DroidSansMono_Nerd_Font:1
"设置相对行号
set rnu
"设置行号
set nu
"设置搜索高亮
set hlsearch
"设置搜索增强
set incsearch
"设置忽略大小写
set ignorecase
"mac 退格键失效
set backspace=2
"使用鼠标
set mouse=a
"显示输入命令
set showcmd
"闪烁
"set vb
"设置使用系统剪切板
set clipboard=unnamed
"设置tab显示为4个空格
set tabstop=4
"设置手动输入tab为4个空格
set softtabstop=-1
set shiftwidth=4
"提示命令 自动补全命令
set wildmenu
"设置光标距离窗口最下面的最小行数
set scrolloff=5
"不自动换行
"set nowrap


""""""""""""""""
"  my hilight  "
""""""""""""""""
hi Title ctermfg=181
hi Normal ctermfg=147
hi SpecialKey ctermfg=81
hi NERDTreeFlags ctermfg=105
hi Structure ctermfg=105
hi PreProc ctermfg=110
hi WildMenu ctermfg=0 ctermbg=110
hi PmenuSel ctermfg=232 ctermbg=218
hi Pmenu ctermfg=218 ctermbg=none
hi Directory ctermfg=110
hi Special ctermfg=111
hi Function ctermfg=111
hi Include ctermfg=110
hi Constant ctermfg=181
hi Search ctermfg=226 ctermbg=243
hi IncSearch cterm=reverse ctermfg=226
hi Statement ctermfg=183
hi Type ctermfg=133
hi LineNr ctermfg=242
hi Comment ctermfg=244
hi YcmErrorSection ctermbg=0
hi Error ctermfg=250 ctermbg=88
hi Folded ctermfg=14 ctermbg=0
hi MatchParen ctermbg=245
hi Visual term=reverse ctermbg=60


"""""""""""""""
"  shortcuts  "
"""""""""""""""
let mapleader = " "
noremap <leader>fzf :FZF<CR>
nnoremap <leader>ag :Ag<Space>
nnoremap <leader>t :call MyTranslate()<CR>
nnoremap ; :NERDTreeToggle<CR>
nnoremap <leader>gt :YcmComplete GoTo<CR>
nnoremap <leader>gd :YcmComplete GetDoc<CR>
nnoremap <leader>f :Autoformat<CR>
"nnoremap re :VimspectorReset
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
"nnoremap <leader>mvn :call Mvn()
nnoremap <leader>r :call CompileRunGcc()<CR>
nnoremap rc :edit ~/.vim/vimrc<CR>
nnoremap <leader>f :buffer<Space>
nnoremap <leader>d :bd<CR>
nnoremap <leader><leader><leader> :res<CR>

""""""""""""""
"  function  "
""""""""""""""
function  MyTranslate()
	exec "TranslateW"
	"silent call system('say -v Mei-Jia '.expand("<cword>"))
	"https://github.com/technogeek48/winsay
	silent call system('say.exe -m '.expand("<cword>"))
endfunction

function Mvn()
	exec '!mvn archetype:generate -DarchetypeCatalog=internal'
endfunction

func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		exec "!time python3 %"
	elseif &filetype == 'html'
		exec "!open % &"
	elseif &filetype == 'go'
		exec "!go build %<"
		exec "!time go run %"
		exec "!firefox %.html &"
	elseif &filetype == 'lua'
		exec "!time lua %"
	endif
endfunc

"copying to clipboard with windows subsystem for linux
if system('uname -r') =~ "microsoft"
	augroup Yank
		autocmd!
		autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
	augroup END
endif
