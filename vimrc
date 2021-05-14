" /**
" * \file vimrc
" * \brief 
" * \author Heming Cheng, supermanc88@gmail.com
" * \version 0.0.1
" * \update 2021-05-14
" */

" [ 基本配置=============================================================
set nocompatible              " be iMproved, required
" filetype off                  " required
filetype plugin on						"	preservim/nerdcommenter 需要开启
set encoding=utf-8
set enc=utf-8
set tabstop=4                 " 设置制表符长度
set softtabstop=4             " 设置软制表符
set shiftwidth=4              " 缩进长度
set number                    " 打开行号
syntax enable				  "开启语法高亮功能
syntax on
set t_Co=256				  "指定配色方案为256色
" 需要配合vimrc_example.vim注释一些代码
set nobackup				  "表示不需要备份文件
set noswapfile				  "表示不创建临时交换文件
set nowritebackup			  "表示编辑的时候不需要备份文件
set noundofile				  "表示不创建撤销文件

" 设置代码折叠为手动
set foldmethod=manual
"打开文件是默认不折叠代码
set foldlevelstart=99


" 删除menu bar
set guioptions-=m
" 删除toolbar
set guioptions-=T
" 删除scrollbar
set guioptions-=r
" 删除左边scrollbar
:set guioptions-=L

" 十字定位线
set cursorline  
set cursorcolumn

highlight CursorLine cterm=none ctermbg=236  
highlight CursorColumn cterm=none ctermbg=236

if has("win32")
	source $VIMRUNTIME/delmenu.vim
	source $VIMRUNTIME/menu.vim
endif		

" 启动最大化
autocmd GUIEnter * simalt ~x
" 基本配置============================================================= ]




" vim-plug: Vim plugin manager
" 下载 https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 文件到vim的autoload目录
call plug#begin('$VIMRUNTIME/../plugged')

" 自动补全 此插件安装的时候需要手动编译
" https://github.com/ycm-core/YouCompleteMe
" Plug 'Valloric/YouCompleteMe'   ",{'on':[]}			                 	
" augroup load_ycm
"     autocmd!
"     autocmd InsertEnter * call plug#load('YouCompleteMe') | autocmd! load_cmd
" augroup END

" nanotech/jellybeans.vim 主题插件
" 此插件优点是可以重载自定义的高亮
" https://github.com/nanotech/jellybeans.vim
Plug 'nanotech/jellybeans.vim'

" jonathanfilip/vim-lucius 主题插件
" https://github.com/jonathanfilip/vim-lucius
Plug 'jonathanfilip/vim-lucius'

" cormacrelf/vim-colors-github 主题插件
" https://github.com/cormacrelf/vim-colors-github
Plug 'cormacrelf/vim-colors-github'

" tomasiser/vim-code-dark 主题插件
" https://github.com/tomasiser/vim-code-dark
Plug 'tomasiser/vim-code-dark'

" dunstontc/vim-vscode-theme 主题插件
" https://github.com/dunstontc/vim-vscode-theme
Plug 'dunstontc/vim-vscode-theme'

" altercation/vim-colors-solarized 主题插件
" https://github.com/altercation/vim-colors-solarized
Plug 'altercation/vim-colors-solarized'

" luochen1990/rainbow 彩虹括号插件
" https://github.com/luochen1990/rainbow
Plug 'luochen1990/rainbow'

" Yggdroot/LeaderF 模糊搜索插件
" https://github.com/Yggdroot/LeaderF
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" scrooloose/nerdcommenter 注释插件
" https://github.com/preservim/nerdcommenter
Plug 'scrooloose/nerdcommenter'

" babaybus/DoxygenToolkit.vim 函数注释插件
" https://github.com/babaybus/DoxygenToolkit.vim
Plug 'babaybus/DoxygenToolkit.vim'

" preservim/nerdtree 目录树插件
" https://github.com/preservim/nerdtree
Plug 'preservim/nerdtree'                    							" 目录树

" vim-airline/vim-airline 状态栏插件
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'                							" 状态栏
Plug 'vim-airline/vim-airline-themes'												" 状态栏主题

" tpope/vim-fugitive git插件
" https://github.com/tpope/vim-fugitive
Plug 'tpope/vim-fugitive'

" Plug 'plasticboy/vim-markdown'											" Vim markdown语法插件

" flazz/vim-colorschemes 主题插件
" https://github.com/flazz/vim-colorschemes
Plug 'flazz/vim-colorschemes'

" Plug 'hzchirs/vim-material'												" material主题
" Plug 'ludovicchabant/vim-gutentags'										" gtags辅助

" dense-analysis/ale 动态检查工具
" https://github.com/dense-analysis/ale
Plug 'dense-analysis/ale'

" neoclide/coc.nvim 补全插件
" https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vim-scripts/TagHighlight 语法高亮插件
" https://github.com/vim-scripts/TagHighlight
" Plug 'vim-scripts/TagHighlight'

" octol/vim-cpp-enhanced-highlight c/cpp 语法高亮
" https://github.com/octol/vim-cpp-enhanced-highlight
" Plug 'octol/vim-cpp-enhanced-highlight'

" jeaye/color_coded c类语法高亮
" https://github.com/jeaye/color_coded
" Plug 'jeaye/color_coded'

" sheerun/vim-polyglot 各种语言高亮
" 经测试这个高亮比较好用
" https://github.com/sheerun/vim-polyglot
Plug 'sheerun/vim-polyglot'

call plug#end()

" 添加 http://github.com/tpope/vim-unimpaired 插件 用来补充一些映射

" Vim预置有很多快捷键，再加上各类插件的快捷键，大量快捷键出现在单层空间中难免引起冲突。为缓解该问题，而引入了前缀键<leader>。
" 前缀键默认为“\”。现修改为空格
let mapleader = "\<space>"




" [ cormacrelf/vim-colors-github 主题插件 配置=============================================================

" cormacrelf/vim-colors-github 主题插件 配置
" Place before the colorscheme github
" use a slightly darker background, like GitHub inline code blocks
" let g:github_colors_soft = 1
" use the dark theme / light
" set background=dark
" more blocky diff markers in signcolumn (e.g. GitGutter)
" let g:github_colors_block_diffmark = 0

" cormacrelf/vim-colors-github 主题插件 配置============================================================= ]




" [ jeaye/color_coded c类语法高亮 配置=============================================================
" 需要本机安装lua，要和vim版本对应
" 在windows版本上未编译成功
" jeaye/color_coded c类语法高亮 配置============================================================= ]




" [ neoclide/coc.nvim 补全插件 配置=============================================================
" 使用clangd官方提供的插件
" :CocInstall coc-clangd
" Note: If you've configured clangd as a languageServer in coc-settings.json, you should remove it to avoid running clangd twice!
" 下载 https://github.com/rizsotto/Bear 用来生成compile_commands.json文件
" 目前只支持Linux
" 如果不用其它工具生成compile_command.json文件，可以在当前目录下使用compile_flags.txt
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
" neoclide/coc.nvim 补全插件 配置============================================================= ]




" [ 主题及airline配置=============================================================

" colorscheme molokai
" colorscheme desert
" set background=light
" colorscheme vim-material
" colorscheme wombat
" colorscheme jellybeans													" 来自nanotech/jellybeans.vim
" colorscheme lucius														" 来自jonathanfilip/vim-lucius
colorscheme molokai																" 来自flazz/vim-colorschemes 主题插件

let g:airline_theme='powerlineish'

" colorscheme github															" 来自cormacrelf/vim-colors-github
" let g:airline_theme='github'										" vim-colors-github 主题提供

" colorscheme codedark															" 来自tomasiser/vim-code-dark
" let g:airline_theme = 'codedark'									" 来自tomasiser/vim-code-dark

" colorscheme dark_plus															" 来自dunstontc/vim-vscode-theme
" let g:airline_theme = 'dark_plus'									" 来自dunstontc/vim-vscode-theme

" 主题及airline配置============================================================= ]




" jonathanfilip/vim-lucius 主题插件 配置
" LuciusBlackHighContrast


" nanotech/jellybeans.vim 主题插件 配置
" set guifont=Monaco:h10 noanti
" let g:jellybeans_use_gui_italics = 0									" 支持斜体


" altercation/vim-colors-solarized 主题插件 配置
" 蓝色的，没想象中的好看
" set background=dark
" colorscheme solarized


" luochen1990/rainbow 彩虹括号插件 配置
" 自动启用
let g:rainbow_active = 1




" [ dense-analysis/ale 动态检查工具 配置=============================================================

" dense-analysis/ale 动态检查工具 配置
" 具体配置请参考： https://github.com/dense-analysis/ale/tree/master/doc
" 抄自 https://skywind3000.com/blog/archives/2084/

" 使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
" 设置对应语言的linter的时候，请确认安装了
" c和c++环境下面是用的clang，需要安装clang或gcc，配置到环境变量
" 在安装YCM后，clangd也被安装，如果配置到环境变量后，clangd的lsp
" 也会被启用。
let g:ale_linters = {
\   'c++': ['clang'],
\   'c': ['clang'],
\   'python': ['pylint'],
\}

" 不希望ale运行除我明确要求的内容以外的其他内容
" 感觉好像没有生效，但目前不影响其他插件，先这么放着吧
" let g:ale_linters_explicit = 1
"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 1
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'


" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
" 报错信息格式
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
" 以下两句规定了如果在normal模式下文件改变及以及离开insert模式才运行linter
" 这是相对保守的做法，如果没有的话，会导致YCM的补全框频繁的刷新
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1

" 我把YCM的错误检测提示标志关了，不然这两个哪个在后面哪个生效
" let g:airline#extensions#ale#enabled = 1
" 这里就是传给编译器的参数
" 这里需要根据每个项目的不同去修改它的引用头文件及宏定义

" CentOS6.10内核编译参数
" 暂时不知道怎么换行
let g:ale_c_cc_options = ''

" let g:ale_cpp_cc_options = '-Wall -std=c++11'
" check用人家默认的就可以了 '--enable=style' 不知道是什么
" let g:ale_c_cppcheck_options = ''
" let g:ale_cpp_cppcheck_options = ''

hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta

" 查看报错信息
noremap <Leader>d :ALEDetail<CR>


" 创建一个函数用来选择cc_options
function! SelectCcOptions()

let g:CcOptionsCollection = [
\ {'2.6.32-754' : '-I. -std=c99
\ -IS:\\usr\\src\\kernels\\2.6.32-754.el6.x86_64\\include 
\ -IS:\\usr\\src\\kernels\\2.6.32-754.el6.x86_64\\arch\\x86\\include 
\ -DMODULE -D__KERNEL__ -D__GNUC__=4 -DCONFIG_64BIT',},
\ {'UOSV21-5.4.50' : '-I. -std=c99
\ -IQ:\\usr\\src\\linux-headers-5.4.50-amd64-desktop\\include
\ -IQ:\\usr\\src\\linux-headers-5.4.50-amd64-desktop\\arch\\x86\\include
\ -DMODULE -D__KERNEL__ -D__GNUC__=8 -DCONFIG_64BIT'},
\ {'Windows Driver Kits v8.1' : '-I. -std=c99
\ -IE:\\WindowsKits\\8.1\\Include\\km\\crt
\ -IE:\\WindowsKits\\8.1\\Include\\km
\ -IE:\\WindowsKits\\8.1\\Include\\shared
\ -D_WIN64 -D_AMD64_ -DAMD64 -DDEPRECATE_DDK_FUNCTIONS=1 -DMSC_NOOPT
\ -D_WIN32_WINNT=0x0601 -DWINVER=0x0601 -DWINNT=1 -DNTDDI_VERSION=0x06010000'},
\ ]

	" echo len(g:CcOptionsCollection)

	let i = 0
	let selectList = []
	while i < len(g:CcOptionsCollection)
		" echo i
		let tempDict = get(g:CcOptionsCollection, i, "")
		echo string(i) . ":" . string(keys(tempDict))
		let i += 1
		call add(selectList, string(keys(tempDict)))
	endwhile
	
	echo "Input Your Select:"
	
	" let userSelect = inputlist(selectList)
	" echo userSelect
	
	let userInput = getchar()
	echo nr2char(userInput)
	
	let tempDict = get(g:CcOptionsCollection, nr2char(userInput), {"NONE" : ""})
	
	if keys(tempDict)[0] == "NONE"
		let g:CurrentCcOptions = ''
	else
		let g:CurrentCcOptions = values(tempDict)[0]
	endif
	
	echo g:CurrentCcOptions
	
	" echo g:CcOptionsCollection
	
	let g:ale_c_cc_options = g:CurrentCcOptions
	
	" 重新载入打开的文件
	bufdo e

endfunction

function! GetCcOptions()
	echo g:ale_c_cc_options
endfunction

" ale select sdk
noremap <leader>ss : call SelectCcOptions()<CR>

" ale show current sdk
noremap <leader>gs : call GetCcOptions()<CR>

" dense-analysis/ale 动态检查工具 配置============================================================= ]




" [ scrooloose/nerdcommenter 注释插件 配置=============================================================

" scrooloose/nerdcommenter 注释插件 配置
" [count]<leader>cc |NERDCommenterComment|
" Comment out the current line or text selected in visual mode.
" 
" [count]<leader>cn |NERDCommenterNested|
" Same as cc but forces nesting.
" 
" [count]<leader>c<space> |NERDCommenterToggle|
" Toggles the comment state of the selected line(s). If the topmost selected line is commented, all selected lines are uncommented and vice versa.
" 
" [count]<leader>cm |NERDCommenterMinimal|
" Comments the given lines using only one set of multipart delimiters.
" 
" [count]<leader>ci |NERDCommenterInvert|
" Toggles the comment state of the selected line(s) individually.
" 
" [count]<leader>cs |NERDCommenterSexy|
" Comments out the selected lines with a pretty block formatted layout.
" 
" [count]<leader>cy |NERDCommenterYank|
" Same as cc except that the commented line(s) are yanked first.

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" scrooloose/nerdcommenter 注释插件 配置============================================================= ]




" [ babaybus/DoxygenToolkit.vim 函数注释插件 配置=============================================================
let g:DoxygenToolkit_briefTag_funcName = "yes"
" for C++ style, change the '@' to '\'
" default C++ comments are : /** ... */. But if you prefer to use ///
" Doxygen comments just add 'let g:DoxygenToolkit_commentType = "C++"'
" let g:DoxygenToolkit_commentType = "C++"
let g:DoxygenToolkit_briefTag_pre = "\\brief "
let g:DoxygenToolkit_templateParamTag_pre = "\\tparam "
let g:DoxygenToolkit_paramTag_pre = "\\param "
let g:DoxygenToolkit_returnTag = "\\return "
let g:DoxygenToolkit_throwTag_pre = "\\throw " " @exception is also valid
let g:DoxygenToolkit_fileTag = "\\file "
let g:DoxygenToolkit_dateTag = "\\date "
let g:DoxygenToolkit_authorTag = "\\author "
let g:DoxygenToolkit_versionTag = "\\version "
let g:DoxygenToolkit_blockTag = "\\name "
let g:DoxygenToolkit_classTag = "\\class "
let g:DoxygenToolkit_authorName = "Heming Cheng, supermanc88@gmail.com"
let g:doxygen_enhanced_color = 1
" 不生成多余的换行
let g:DoxygenToolkit_compactDoc = "yes"
" babaybus/DoxygenToolkit.vim 函数注释插件 配置============================================================= ]




" [ preservim/nerdtree 目录树插件 配置=============================================================
noremap <silent> <F5> :NERDTreeToggle<CR>            " F5 开关目录树
" open NERDTree automatically when Vim starts
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
" preservim/nerdtree 目录树插件 配置============================================================= ]




" [ YouCompleteMe 配置=============================================================
"You Complete Me 编译
"需要安装vim对应版本的python，查看方式为： :version
"安装 VS2017 或者 VS2015
"下载YCM插件源码后，如下命令编译插件：
"python install.py --clang-completer --msvc 16

"此处是全局配置文件路径
let g:ycm_global_ycm_extra_conf = '$VIMRUNTIME/../.ycm_extra_conf.py'
"关闭每次导入配置文件前的询问
let g:ycm_confirm_extra_conf = 0
" "let g:syntastic_always_populate_loc_list = 1 										"方便使用syntastic进行语法检查
"开启语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
"关闭补全预览
let g:ycm_add_preview_to_completeopt=0
let g:ycm_seed_identifiers_with_syntax = 1											"标识符种子
let g:ycm_min_num_of_chars_for_completion = 1										"当按一个字符之后开始提示
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }																		"语义补全
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
"修改提示框颜色
" highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=darkgrey
" highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black		
" 为了使用ale语法检查，要把ycm的语法检查关闭
"disable ycm 语法检查
" 这里关闭之后，下面的错误提示也就没用了"
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0		
" 错误标记
let g:ycm_error_symbol = '✗'  "set error or warning signs
" warning标记
let g:ycm_warning_symbol = '⚡'	"⚠

" "highlight YcmErrorSign       标记颜色
" "highlight YcmWarningSign ctermbg=none
" "highlight YcmErrorSection      代码中出错字段颜色
" highlight YcmWarningSection ctermbg=none
" "highlight YcmErrorLine        出错行颜色
" "highlight YcmWarningLine
 
" " 跳转快捷键
nnoremap <c-k> :YcmCompleter GoToDeclaration<CR>|
nnoremap <c-h> :YcmCompleter GoToDefinition<CR>| 
nnoremap <c-j> :YcmCompleter GoToDefinitionElseDeclaration<CR>|
" YouCompleteMe 配置============================================================= ]



 
" source $VIMRUNTIME/cscope_maps.vim
" 
" " gutentags 配置========================================================
" " gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
" let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 
" " 所生成的数据文件的名称
" let g:gutentags_ctags_tagfile = '.tags'
" 
" " 同时开启 ctags 和 gtags 支持：
" let g:gutentags_modules = []
" if executable('ctags')
" 	let g:gutentags_modules += ['ctags']
" endif
" if executable('gtags-cscope') && executable('gtags')
" 	let g:gutentags_modules += ['gtags_cscope']
" endif
" 
" " 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
" let g:gutentags_cache_dir = expand('~/.cache/tags')
" 
" " 配置 ctags 的参数
" let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
" let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
" let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" 
" " 如果使用 universal ctags 需要增加下面一行
" let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
" 
" " 禁用 gutentags 自动加载 gtags 数据库的行为
" let g:gutentags_auto_add_gtags_cscope = 0
" " gutentags 配置========================================================
" 
" " Gtags 配置========================================================
" let $GTAGSLABEL = 'native-pygments'
" let $GTAGSCONF = 'D:/Program Files (x86)/Vim/extends/gtags/share/gtags/gtags.conf'
" " cscope
" set cscopetag                  " 使用 cscope 作为 tags 命令
" set cscopeprg=gtags-cscope   " 使用 gtags-cscope 代替 cscope
" 
" " gtags
" let GtagsCscope_Auto_Load = 1
" let CtagsCscope_Auto_Map = 1
" let GtagsCscope_Quiet = 1
" " Gtags 配置========================================================




" [ Yggdroot/LeaderF 模糊搜索插件 配置=============================================================

" 此插件需要 GNU GLOBAL(gtags) 的配合
" Windows下载地址 https://www.gnu.org/software/global/download.html
" 正则表达式/字符串检索 Leaderf rg ...
" ripgrep下载地址 https://github.com/BurntSushi/ripgrep/releases
" 需要安装ctags
" 下载地址 https://github.com/universal-ctags/ctags-win32/releases
" 以上安装后，均需要加入到环境变量中
" 以下是默认的配置
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1

" 气泡模式，就是在窗口中央弹出一个窗口
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
" let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
" let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

" 使用 ctrl + p 查找文件
let g:Lf_ShortcutF = '<c-p>'

" 键盘映射
" 由于leaderf映射了 ctrl-f和ctrl-b，所以上下翻页使用ctrl-d和ctrl-u
" noremap 可在 普通、可视、选择、操作符等待 下工作
" CTRL-U 使窗口在缓冲区中向上滚动。滚动的行数由 'scroll' 选项指定 (默认设置为半个屏幕)
" CTRL-R 重做 [count] 次被撤销的更改。
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>

" 使用rg进行查找
" expand("<cword>") 是取当前光标下的单词
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

" gtags 数据库文件存储在$HOME/.LfCache/gtags/%PATH%OF%YOUR%PROJECT/
" should use `Leaderf gtags --update` first
" gtags是否自动生成
" 当代码有更改并且已经有 gtags 数据库生成时，更改的代码会自动同步到 gtags 数据库（即使g:Lf_GtagsAutoGenerate是0）
" 只有在项目根目录下有g:Lf_RootMarkers（默认值是['.git', '.hg', '.svn']）里面指定的文件或目录时，LeaderF 才会自动生成 gtags 数据库；
" 否则只能手动生成 gtags 数据库：Leaderf gtags --update，但是当代码有更改时，gtags 数据库依然可以自动更新。
" 用来指定 gtags.conf 文件的路径，一般情况下不需要指定，默认值就可以很好地工作。
" 对于Windows上，如果相对于gtags.exe所在路径有../share/gtags/gtags.conf，也不需要指定该选项。
" 如果需要用户自己特有的针对 gtags 的配置，可以指定用户的配置文件。
" 也可以在vimrc里设置g:Lf_Gtagsconf达到同样的目的
" 需要把 gtags.exe的所在路径加入环境变量 D:\Vim\plugged\glo665wb\bin
" 错误信息查看 :mess
" 当出现 gtags seems corrupted 时，可能是tags生成目录有文件，先删除了，再重新生成
let g:Lf_GtagsAutoGenerate = 1
" let g:Lf_Gtagsconf = '$VIMRUNTIME/../plugged/glo665wb/share/gtags/gtags.conf'

" 开启此功能时，需要python安装以下模块
" pip install pygments
let g:Lf_Gtagslabel = 'native-pygments'

" 查找引用
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
" 查找定义
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
" 再次调用刚才的命令
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
" 跳转到下一个tag
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
" 跳转到上一个tag
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

" F2显示出当前文件的函数列表
noremap <F2> :LeaderfFunction!<cr>           

" Yggdroot/LeaderF 模糊搜索插件 配置============================================================= ]




" [ vim-airline/vim-airline 状态栏插件 配置=============================================================
" vim-airline/vim-airline 状态栏插件 配置
" 默认只有下面的状态栏
" 在上面显示buffer/tab相关状态栏 smart tab line 开启
let g:airline#extensions#tabline#enabled = 1

" 默认显示的是垂直分隔的
" 这里是否生效还要通过下面的安装字体才可以
" 要使用箭头样式需要打开powerline
" 一般使用Source Code Pro
let g:airline_powerline_fonts = 1

" 自定义字符
" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif
" 
" " unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.crypt = '🔒'
" let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.maxlinenr = '㏑'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = 'Ɇ'
" let g:airline_symbols.whitespace = 'Ξ'
" vim-airline/vim-airline 状态栏插件 配置============================================================= ]




" [ 自定义功能配置=============================================================

" 打开自己写的常用的vim快捷键
let g:helpTxtOpened = 0
function OpenMyHelpTxtToggle()
"	echo g:helpTxtOpened
"	let g:helpTxtOpened = bufexists('C:\\Users\\CHM\\OneDrive\\工作\\常用\\vim快捷键.txt')
"	let g:helpTxtOpened = execute "ls"
"	echo g:helpTxtOpened
	if g:helpTxtOpened == 1
		:bd C:\\Users\\CHM\\OneDrive\\工作\\常用\\vim快捷键.txt
		let g:helpTxtOpened = 0
	else
		:vsp C:\\Users\\CHM\\OneDrive\\工作\\常用\\vim快捷键.txt
		execute "normal \<C-W>\<S-L>"
		:vertical resize -20
		let g:helpTxtOpened = 1
	endif
endfunction
" noremap <F1> :call OpenMyHelpTxt()<cr><C-W><S-L><CR>:vertical resize -20<CR>
noremap <F1> :call OpenMyHelpTxtToggle()<cr>

" 自定义功能配置============================================================= ]




" ====================================================================
" 下载字体
" https://github.com/adobe-fonts/source-code-pro/releases
" 设置字体
if has("gui_running")
	if has("gui_gtk2")
		set guifont=Inconsolata\ 12
    elseif has("gui_macvim")
		set guifont=Menlo\ Regular:h14
	elseif has("gui_win32")
		" set guifont=Consolas:h12:cANSI
		set guifont=Source\ Code\ Pro:h11:cANSI
    endif
endif
" " ====================================================================




" " 窗口透明度 配置========================================================
" if has('gui_running') && has('libcall')
" 	let g:MyVimLib = $VIMRUNTIME.'/gvimfullscreen.dll'
" 	function ToggleFullScreen()
" 		call libcallnr(g:MyVimLib, "ToggleFullScreen", 0)
" 	endfunction
"     
" 	"Alt+Enter
" 	map <A-Enter> <Esc>:call ToggleFullScreen()<CR>
" 
" 	let g:VimAlpha = 240
" 	function! SetAlpha(alpha)
" 		let g:VimAlpha = g:VimAlpha + a:alpha
" 		if g:VimAlpha < 180
" 			let g:VimAlpha = 180
" 		endif
" 		if g:VimAlpha > 255
" 			let g:VimAlpha = 255
" 		endif
" 		call libcall(g:MyVimLib, 'SetAlpha', g:VimAlpha)
" 	endfunction
"     
" 	"Shift+Y
" 	nmap <s-y> <Esc>:call SetAlpha(3)<CR>
" 	"Shift+T
" 	nmap <s-t> <Esc>:call SetAlpha(-3)<CR>
" 
" 	function! SwitchVimAlpha()
" 		if g:VimAlpha != 180
" 			let g:VimAlpha = 180
" 		else
" 			let g:VimAlpha = 255
" 		endif
" 		call libcall(g:MyVimLib, 'SetAlpha', g:VimAlpha)
" 	endfunction
" 	" F8
" 	map <F8> :call SwitchVimAlpha()<CR>
" 
" 	let g:VimTopMost = 0
" 	function! SwitchVimTopMostMode()
" 		if g:VimTopMost == 0
" 			let g:VimTopMost = 1
" 		else
" 			let g:VimTopMost = 0
" 		endif
" 		call libcall(g:MyVimLib, 'EnableTopMost', g:VimTopMost)
" 	endfunction
"     
" 	"Shift+R
" 	nmap <s-r> <Esc>:call SwitchVimTopMostMode()<CR>
" endif

" 窗口透明度 配置========================================================




