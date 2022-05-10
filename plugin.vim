" Wiki trick
let g:ycm_filetype_specific_completion_to_disable = {
          \ 'zettel': 1
      \}
autocmd FileType *
            \ call deoplete#custom#buffer_option('auto_complete', v:false)
autocmd FileType zettel
            \ call deoplete#custom#buffer_option('auto_complete', v:true)

" TagBar
let g:tagbar_usearrows = 1
let g:tagbar_autofocus = 0

" Ycm work with conda and misc venv
let g:ycm_path_to_python_interpreter = '/usr/bin/python'

" Gutentag
let g:gutentags_cache_dir = "~/Projects/.tags/"

" Let's make ultisnipe and ycm work together:
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>""

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
	\ 'vim'        : ['vint'],
	\ 'python'     : ['pylint', 'vulture', 'mypy'],
	\ 'javascript' : ['jshint'],
	\ 'css'        : ['csslint']
    \}

" Zettle custom plugin, handling non default option
let g:zettel_sync_ssh_key_path = "/home/olivier/.ssh/id_ed25519"
