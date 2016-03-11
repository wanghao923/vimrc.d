"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of vimrc configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>ee :e! ~/vimrc.d/installed_plugins.vim<cr>
autocmd! bufwritepost installed_plugins.vim source ~/.vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#rc('~/vimrc.d/bundle/')
" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
map <leader>d <plug>NERDTreeTabsToggle<CR>
let NERDTreeIgnore=['\.pyc$']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Tagbar'
noremap <leader>f :TagbarToggle<CR>
let g:tagbar_autofocus=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'kien/ctrlp.vim'
noremap <leader>t :CtrlP
noremap <leader>r :CtrlPBufTag<CR>
let g:ctrlp_switch_buffer = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Jedi
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'davidhalter/jedi-vim'
" Shortcuts
let g:jedi#goto_command = "<C-C>d"
let g:jedi#goto_assignments_command = "<C-C>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<C-C>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<C-C>r"
" Configurations
let g:jedi#use_tabs_not_buffers = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'bling/vim-airline'
let g:airline_left_sep = '>'
let g:airline_right_sep = '<'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.linenr = '>>'
let g:airline_symbols.branch = '<<'
let g:airline_symbols.whitespace = 'Ξ'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyMotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'Lokaltog/vim-easymotion'
nmap s <Plug>(easymotion-overwin-f)
nmap s <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Alignment
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-scripts/Align'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Work status
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ListWorkStatus()
    tabnew
    CtrlP $HOME/work_status
endfunc

cabbrev work <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'call ListWorkStatus()' : 'work')<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Color scheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tomasr/molokai'
let g:molokai_original = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => python ifold
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-scripts/python_ifold'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => python pep8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'vim-scripts/pep8'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-ipython
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'ivanov/vim-ipython'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-python-test-runner
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'JarrodCTaylor/vim-python-test-runner'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tpope/vim-fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'tpope/vim-fugitive'

