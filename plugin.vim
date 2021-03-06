" TagBar
let g:tagbar_usearrows = 1
let g:tagbar_autofocus = 0

" Ycm work with conda and misc venv
let g:ycm_path_to_python_interpreter = '/usr/bin/python'

" Gutentag
let g:gutentags_cache_dir = "~/Projects/.tags/"
let g:gutentags_exclude_filetypes = ['gitcommit', 'gitconfig', 'gitrebase', 'gitsendemail', 'git', 'yaml']
let g:gutentags_ctags_exclude = [
\  '*.git', '*.svn', '*.hg',
\  'cache', 'build', 'dist', 'bin', 'node_modules', 'bower_components',
\  '*-lock.json',  '*.lock',
\  '*.min.*',
\  '*.bak',
\  '*.zip',
\  '*.pyc',
\  '*.class',
\  '*.sln',
\  '*.csproj', '*.csproj.user',
\  '*.tmp',
\  '*.cache',
\  '*.vscode',
\  '*.pdb',
\  '*.exe', '*.dll', '*.bin',
\  '*.mp3', '*.ogg', '*.flac',
\  '*.swp', '*.swo',
\  '.DS_Store', '*.plist',
\  '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png', '*.svg',
\  '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2',
\  '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx', '*.xls',
\]

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
let g:airline_left_sep = '??'
let g:airline_left_sep = '???'
let g:airline_right_sep = '??'
let g:airline_right_sep = '???'
let g:airline_symbols.linenr = '???'
let g:airline_symbols.linenr = '???'
let g:airline_symbols.linenr = '??'
let g:airline_symbols.branch = '???'
let g:airline_symbols.paste = '??'
let g:airline_symbols.paste = '??'
let g:airline_symbols.paste = '???'
let g:airline_symbols.whitespace = '??'

"" airline symbols
let g:airline_left_sep = '???'
let g:airline_left_alt_sep = '???'
let g:airline_right_sep = '???'
let g:airline_right_alt_sep = '???'
let g:airline_symbols.branch = '???'
let g:airline_symbols.readonly = '???'
let g:airline_symbols.linenr = '???'
let g:airline_symbols.maxlinenr = '???'
let g:airline_symbols.dirty='???'
let g:airline_symbols.space = "\ua0"

" Ale
let g:ale_alias = {'zettel': ['markdown']}
let g:ale_linters = {
	\ 'c'          : ['clang'],
	\ 'markdown'   : ['cspell', 'languagetool', 'proselint', 'redpen', 'remark_lint', 'textlint', 'vale', 'writegood'],
	\ 'vim'        : ['vint'],
	\ 'python'     : ['pylint', 'vulture', 'mypy'],
	\ 'javascript' : ['jshint'],
	\ 'css'        : ['csslint']
    \}
let g:ale_linters_explicit = 1
let g:ale_set_quickfix = 1

" Zettle custom plugin, handling non default option
let g:zettel_sync_ssh_key_path = "/home/olivier/.ssh/id_ed25519"
"" Wiki trick
let g:ycm_filetype_specific_completion_to_disable = {
          \ 'zettel': 1
      \}
autocmd FileType *
            \ call deoplete#custom#buffer_option('auto_complete', v:false)
autocmd FileType zettel
            \ call deoplete#custom#buffer_option('auto_complete', v:true)

