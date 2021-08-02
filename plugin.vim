"" Closetag
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag.vim/plugin/closetag.vim

" TagBar
let g:tagbar_usearrows = 1
let g:tagbar_autofocus = 0
nnoremap :TG :TagbarToggle<CR>

" pydiction
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'

" Ycm work with conda
let g:ycm_path_to_python_interpreter = '/usr/bin/python'

" vim air-line
set laststatus=2
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tagbar#enabled = 0

" vim better space
autocmd FileType * autocmd BufWritePre <buffer> StripWhitespace

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Let's make ultisnipe and ycm work together:
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>""

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"" html
let g:syntastic_html_tidy_ignore_errors = [
	\" proprietary attribute \"ng-",
    \"trimming empty <i>",
    \"trimming empty <span>",
    \"<input> proprietary attribute \"autocomplete\"",
    \"proprietary attribute \"role\"",
    \"proprietary attribute \"hidden\"",
\]

"" Text
let g:syntastic_text_checkers = ['language_check']
let g:syntastic_text_language_check_args = '--language=en-US'

"" Python
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_pylint_args = '--rcfile=~/.pylintrc'
"let g:syntastic_python_python_exec = '/usr/local/bin/python2.7'

"" Javascript
let g:syntastic_javascript_checkers = ['jshint']

"" C++
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_no_include_search = 1
let g:syntastic_cpp_auto_refresh_includes = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
