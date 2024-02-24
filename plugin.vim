" TagBar
let g:tagbar_usearrows = 1
let g:tagbar_autofocus = 0

" Let's make ultisnipe and ycm work together:
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>""

" More YCM config
"" Toggling shortcut: https://vi.stackexchange.com/questions/16265/temporarily-disable-reenable-youcompleteme-plugin
""Toggle YouCompleteMe on and off with F3
function Toggle_ycm()
    if g:ycm_show_diagnostics_ui == 0
        let g:ycm_auto_trigger = 1
        let g:ycm_show_diagnostics_ui = 1
        :YcmRestartServer
        :e
        :echo "YCM on"
    elseif g:ycm_show_diagnostics_ui == 1
        let g:ycm_auto_trigger = 0
        let g:ycm_show_diagnostics_ui = 0
        :YcmRestartServer
        :e
        :echo "YCM off"
    endif
endfunction
map <F3> :call Toggle_ycm() <CR>
"" turn off automatic YouCompleteMe cursor hover info
let g:ycm_auto_hover = ''
"" toggle language hover info with F4
map <F4> <plug>(YCMHover)

" vim air-line
"let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#displayed_head_limit = 10
let g:airline_section_c_only_filename = 1
let g:airline_section_z = airline#section#create(['windowswap', '%l:%L', ' | %c:%{strlen(getline("."))}'])
let g:airline_section_c = airline#section#create([""])
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#ale#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
let g:airline_symbols.space = "\ua0"

" Ale
let g:ale_linters = {
	\ 'c'          : ['clang'],
	\ 'markdown'   : ['cspell', 'languagetool', 'proselint', 'redpen', 'remark_lint', 'textlint', 'vale', 'writegood'],
	\ 'vim'        : ['vint'],
	\ 'python'     : ['ruff', 'flake8'],
	\ 'javascript' : ['jshint'],
	\ 'css'        : ['csslint']
    \}
let g:ale_fixers = {
    \ 'python'     : ['ruff', 'isort', 'black']
    \}
let g:ale_linters_explicit = 1
let g:ale_python_auto_pipenv = 1
let g:ale_python_black_options='--line-length=140'
let g:ale_python_isort_options = '--profile black -l 140 --overwrite-in-place'
"let g:ale_set_quickfix = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" At least make it usefull (peer prog)
let g:nerdtree_sync_cursorline = 1
let g:NERDTreeFileLines = 1
