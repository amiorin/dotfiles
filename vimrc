" vim: sw=2 ts=2 et fdm=marker fdl=0 nofoldenable :
" Alberto Miorin's .vimrc File
" "zo" to open folds, "zc" to close, "zi" to toggle
" Vundle {{{1
set nocompatible               " be iMproved
filetype off                   " required!

let g:project_use_nerdtree = 1
set rtp+=~/.vim/bundle/vim-project/
call project#rc("~/Code")

if hostname() ==# 'air.local'
  Project  'scratch'

  Project  'gvim'

  Project  'rendr-app-template'                   , 'rendr'
  Project  'vim-ruby-debugger'
  Project  'debugger-xml'


  Project  'nodevim'
  Project  'resume'
  Project  'halloween-2012'


  Project  'vim'
  Project  'macvim'
  Project  'octopress'
  Project  'gsource'
  Project  'markup'
  Project  'glib'
  Project  'reloadlive'
  Project  'flashcards'
  Project  'leitner'
  Callback 'leitner'                              , 'AddSpecToPath'


  Project  '~/.vim/bundle'
  Project  '~/.vim/bundle/vim-fenced-code-blocks' , 'fenced'
  Project  '~/.vim/bundle/vim-project'            , 'project'
  Project  '~/.vim/bundle/vim-bookmarks'          , 'bookmarks'
  Project  '~/.vim/bundle/ctrlp.vim'              , 'ctrlp'
  Project  '~/.vim/bundle/ctrlp-z'                , 'ctrlp-z'
  Project  '~/.vim/bundle/vim-eval'               , 'eval'
  Project  '~/.vim/bundle/vim-asign'              , 'asign'
  Project  '~/.vim/bundle/tube.vim'               , 'tube'
  Project  '~/.vim/bundle/vim-startify'           , 'startify'
  Project  '~/.vim/bundle/vim-leitner'
elseif hostname() ==# 'TOSHIBA'
  Project  'scratch'
  Callback 'scratch'                              , 'Foo'

  " for testing on win32
  function! Foo(...) abort
    echom "foo"
  endfunction

elseif hostname() ==# 'retina.local' || hostname() ==# 'tirena.local'
  Project  'jekyll-elasticsearch'
  Project  'nugg.ad/nuggad-tgi-integration'
  Project  'nugg.ad/aerospike-benchmark'
  Project  'aerospike-client-nodejs'
  Project  'act'
  Project  'myriad'
  Project  'node-webhdfs'
  Project  'influxdb-examples'
  Project  'iperf'
  Project  'foo'
  Project  'nugg.ad/nuggad-lang'
  Project  'nugg.ad/nuggad-api-service'
  Project  'soundcloud/index'
  Project  'soundcloud/search'
  Project  'nugg.ad/spark-data-science'
  Project  '/Users/amiorin/Downloads/spark-1.0.2-bin-cdh4'
  Project  'nugg.ad/impala-rest'
  Project  'nugg.ad/spark-forecast'
  Project  'nugg.ad/spark-1.0.2-bin-hadoop2'
  Project  'parquet-mr'
  Project  'nugg.ad/streamdrill'
  Project  'haproxy-1.5.3'
  Project  'plainc'
  Project  'wrk'
  Project  'redis'
  Project  'accesslog'
  Project  'okhttp'
  Project  'nugg.ad/nuggad-flume'
  Project  'nugg.ad/userdb'
  Project  'nugg.ad/commons-configuration-example'
  Project  'commons-configuration'
  Project  'log4j'
  Project  'metrics-librato'
  Project  'nugg.ad/cdh-single-node'
  Project  'guava-chat'
  Project  'HugeCollections'
  Project  'nugg.ad/slack-ansible'
  Project  'nugg.ad/provisioning'
  Project  'nugg.ad/chronos-sync'
  Project  'nugg.ad/spark'
  Project  'nugg.ad/upload-process'
  Project  'nugg.ad/spark-hello-world'
  Project  'nugg.ad/spark-prediction-processor'
  Project  'nugg.ad/bob-the-builder'
  Project  'apache-spark'
  Project  'glog-0.3.3'
  Project  'nugg.ad/ansible-playbooks'
  Project  'nugg.ad/terasort'
  Project  'nugg.ad/hio-bench'
  Project  'nugg.ad/testdfsio'
  Project  'nugg.ad/chronos-jobs'
  Project  'nugg.ad/google-integration'
  Project  'nugg.ad/flume-configuration'

  Project  'roshi'
  Project  'mesos'
  " Project  'nugg.ad/winnie'
  " Project  'nugg.ad/winnie-haproxy-configuration'
  " winnie project
  Project  'nugg.ad/packages-ansible'
  Project  'nugg.ad/winnie-processor'
  Project  'nugg.ad/winnie-application'
  Project  'nugg.ad/nuggad-logger'
  Project  'nugg.ad/nuggad-processor'

  " other projects
  Project  'nugg.ad/nuggad-cascalog'
  Project  'chronos'
  Project  'apache-flume'
  Project  'scala-examples'

  Project  'hadoop-2.3.0-cdh5.0.1'
  Project  'gradle-dependencies'
  Project  'mesos-hadoop'
  Project  'hadoop-common'
  Project  'nugg.ad/nuggad-tgi'
  Project  'nugg.ad/influx2'
  Project  'nugg.ad/integration-puh'
  Project  'nugg.ad/nuggad-puh-node-conf'
  " Project  'nugg.ad/nuggad-winnie-cluster'
  Project  'ruby-build'
  Project  'rvm'
  Project  'nugg.ad/nuggad-docker'
  Project  'nugg.ad/nuggad-pallet'
  Project  'nugg.ad/forecast-loader'
  Project  'spring-xd'
  Project  'spring-integration'
  Project  'shark'
  Project  'kite-examples'
  Project  'nugg.ad/protobuf-examples'
  Project  'nugg.ad/scala-examples'
  Project  'nugg.ad/spark-application'
  Project  'nugg.ad/spark-tutorial'
  Project  'ansible'
  Project  'incubator-spark'
  Project  'nugg.ad/apt-repository'
  Project  'ansible-examples/hadoop'
  Project  'nugg.ad/nuggad-flume-conf'
  Project  'nugg.ad/user-provisioning'
  Project  'mentalcase'
  Project  'nugg.ad/chronos'
  Project  'daemontools'
  Project  'go/src/github.com/amiorin/newmath'
  Project  'go/src/github.com/hashicorp/serf'
  Project  'nugg.ad/nuggad-dcluster'
  Project  'poller'
  Project  'nugg.ad/rptn'
  Project  'nugg.ad/nuggad-db'
  Project  'nugg.ad/rptn-svm'
  Project  'nugg.ad/nuggad-syncd'
  Project  'nugg.ad/cors4'
  Project  'screen'
  Project  'clojure-examples'
  Project  'dzslides'
  Project  'trident-tutorial'
  Project  'cdk-examples'
  Project  'nugg.ad/nuggad-campaign-dashboard'
  Project  'nugg.ad/rptn-admin'
  Project  'regeneratorify'
  Project  'regenerator'
  Project  'stream-iframe'
  Project  'cookielesscookies'
  Project  'nugg.ad/cors'
  Project  'nugg.ad/cors2'
  Project  'nugg.ad/cors3'
  Project  'proxy'
  Project  'nugg.ad/nuggad-local-storage'
  Project  'step-examples'
  Project  'nugg.ad/ratio'
  Project  'node'
  Project  'nugg.ad/vagrant-jscoverage'
  Project  'nugg.ad/vagrant-zsh'
  Project  '~/.vim/bundle/vim-project'
  Project  'coverify-example'
  Project  'nugg.ad/influx'
  Project  'nugg.ad/nuggad-rrd'
  Project  'nugg.ad/vagrant-node'
  Project  'nugg.ad/dotsh'
  Project  'nugg.ad/nuggad-deps'
  Project  'nugg.ad/nuggad-amazon'
  Project  'nugg.ad/nuggad-amazon-virtualbox'
  Project  'nugg.ad/nuggad-amazon-personal'
  Project  'nugg.ad/nuggad-tasks'
  Project  'nugg.ad/nuggad-packer'
  Project  'nugg.ad/vagrant-daemontools'
  Project  'agave-example'
  Project  'nugg.ad/vagrant-sensu'
  Project  'nugg.ad/vagrant-lein'
  Project  'nugg.ad/nuggad-rvm'
  Project  'nugg.ad/graphviz'
  Project  'vagrant-debian-wheezy-64'
  Project  'nugg.ad/analyser2'
  Project  'grunt-watchify'
  Project  'grunt-contrib-connect'
  Project  'browserify-seed'
  Project  'watchify'
  Project  'generator-browserify'
  Project  'reloadlive'
  Project  '~/.vim/bundle/ctrlp.vim'
  Project  '~/.vim/bundle/vim-asign'
  Project  '~/.vim/bundle/vim-leitner'
  " Project  'nugg.ad/wiki'
  " call project#config#callback("browserify-seed", project#utils#alternate(
  "   \  [{'regex': '^src', 'string': 'spec', 'suffix': '+_spec'},
  "   \   {'regex': '^spec', 'string': 'src', 'suffix': '-_spec'}]
  "   \  ))
endif

if hostname() =~ 'local'
  Project  'gollum'
  File     'gollum/Todo.md'                       , 'todo'
  Callback 'todo'                                 , 'SetupTodo'
  File     'gollum/Bookmarks.md'                  , 'favorites'
  Callback 'gollum'                               , 'RemoveTextWidth'
  Project  'dotfiles'
  File     'dotfiles/vimrc'                       , 'vimrc'
  File     'dotfiles/gvimrc'                      , 'gvimrc'
  File     'dotfiles/zshrc'                       , 'zshrc'
  " Project  'terra/mystica'
  " Callback 'mystica'                              , 'AddPublicToPath'
endif

function SetupTodo(...) abort
  setlocal fdm=marker
  setlocal fdl=0
endfunction

function! RemoveTextWidth(...) abort
  setlocal textwidth=0
endfunction

function! SetupJavaScriptProject(...) abort
  setlocal path+=src
  setlocal suffixesadd+=.js
endfunction

function! AddSpecToPath(...) abort
  setlocal path+=spec
endfunction

function! AddPublicToPath(...) abort
  setlocal path+=public
endfunction

" irb-config {{{1
let g:call_spec_on_save_enable = 1
function! CallSpecOnSave(...) abort
  if get(g:, 'call_spec_on_save_enable', 1)
    let bn = bufname('%')
    if bn =~ '^spec/.*_spec\.rb$'
      augroup CallSpecOnSave
        au!
        autocmd BufWritePost <buffer> :Tube ActiveRecord::Base.logger.level = Logger::Severity::UNKNOWN
        autocmd BufWritePost <buffer> :Tube rspec %:#{line('.')} --format=documentation
      augroup END
    elseif bn =~ '^app/.*\.rb$'
      let bn = substitute(bn, '^app', 'spec', '')
      let bn = substitute(bn, '\.rb$', '_spec.rb', '')
      augroup CallSpecOnSave
        au!
        autocmd BufWritePost <buffer> :Tube ActiveRecord::Base.logger.level = Logger::Severity::UNKNOWN
        autocmd BufWritePost <buffer> :Tube reload!
        execute 'autocmd BufWritePost <buffer> :Tube rspec '.bn.' --format=documentation'
      augroup END
    else
      return
    endif
  endif
endfunction

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" package manager
Bundle 'gmarik/Vundle.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'amiorin/ctrlp-z'
Bundle 'amiorin/vim-colors-solarized'
Bundle 'amiorin/vim-eval'
Bundle 'amiorin/tinykeymap_vim'
Bundle 'amiorin/vim-leitner'
Bundle 'amiorin/vim-fenced-code-blocks'
Bundle 'amiorin/vim-bookmarks'
Bundle 'amiorin/vim-project'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'dahu/vim-fanfingtastic'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'Lokaltog/vim-powerline'
" disable beacause of youcompleteme
" Bundle 'ervandew/supertab'

" with screen or tmux
" Bundle 'ervandew/screenervandew/screen'

" with iTerm and MacVim
Bundle 'gcmt/tube.vim'

Bundle 'mileszs/ack.vim'
Bundle 'dahu/LearnVim'
" Bundle 'guns/paredit'
" it's a mercurial repository :-(
Bundle 'https://bitbucket.org/kovisoft/paredit'
" Bundle 'guns/vim-sexp'

" disable, why?
Bundle 'guyzmo/Rainbow-Parentheses-Improved-and2'

" newer, I've to try (for raibow parentheses)
" Bundle 'amdt/vim-niji'

Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-ragtag'
Bundle 'tpope/vim-scriptease'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-rails'
Bundle 'pangloss/vim-javascript'
Bundle 'godlygeek/tabular'
Bundle 'sjl/gundo.vim'
Bundle 'jgdavey/tslime.vim'
Bundle 'maxbrunsfeld/vim-yankstack'
Bundle 'tyru/open-browser.vim'
Bundle 'tacahiroy/ctrlp-funky'
" they don't work anymore
" Bundle 'ctrlp-filetype'
" Bundle 'ctrlp-register'
" Bundle 'ctrlp-verboselet'
Bundle 'milkypostman/vim-togglelist'
Bundle 'bkad/CamelCaseMotion'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'kana/vim-textobj-syntax'
Bundle 'kana/vim-textobj-indent'
Bundle 'glts/vim-textobj-indblock'
Bundle 'coderifous/textobj-word-column.vim'
Bundle 'nelstrom/vim-visual-star-search'

" FIXME: we should remap the <CR>
" Bundle 'mmai/wikilink'

Bundle 'tomtom/quickfixsigns_vim'
Bundle 'kshenoy/vim-signature'
Bundle 'tpope/vim-dispatch'

" too slow
" Bundle 'mhinz/vim-signify'
" Bundle 'airblade/vim-gitgutter'

Bundle 'tpope/vim-obsession'
Bundle 'szw/vim-smartclose'
Bundle 'nono/vim-handlebars'
Bundle 'kchmck/vim-coffee-script'
" we use irb-config because it's faster than zeus
" Bundle 'thoughtbot/vim-rspec'
Bundle 'marijnh/tern_for_vim'
Bundle 'rking/ag.vim'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
" temporary disable because of tern
Bundle 'garbas/vim-snipmate'
Bundle 'spf13/snipmate-snippets'

Bundle 'jnwhiteh/vim-golang'
Bundle 'Blackrush/vim-gocode'

Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'
Bundle 'Valloric/YouCompleteMe'
Bundle 'amiorin/vim-textile'
Bundle 'klen/python-mode'
Bundle 'Glench/Vim-Jinja2-Syntax'
Bundle 'derekwyatt/vim-scala'
" Bundle 'joonty/vdebug'

" tmux setup {{{1
" Bundle 'christoomey/vim-tmux-navigator'
" Bundle 'sjl/vitality.vim'
Bundle 'mustache/vim-mustache-handlebars'
call vundle#end()

filetype plugin indent on
syntax on

" vim-rspec
" let g:rspec_command = "Dispatch zeus rspec {spec}"
" map <space>rt :call RunCurrentSpecFile()<CR>
" map <space>rs :call RunNearestSpec()<CR>
" map <space>rl :call RunLastSpec()<CR>

" disable go syntastic
" let g:loaded_syntastic_go_go_checker=1
" let g:loaded_syntastic_go_gofmt_checker=1
" let g:loaded_syntastic_go_govet_checker=1

" go ctags {{{1
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" snipmate {{{1
imap <C-space> <Esc>a<Plug>snipMateNextOrTrigger

" rvm {{{1
if hostname() =~ 'local'
"   augroup rvm
"     autocmd!
"     autocmd BufEnter * Rvm
"   augroup END

  " vim-eval {{{1
  let g:eval_viml_n = "<D-r>"
  let g:eval_viml_v = "<D-r>"
endif

" no startup message {{{1
set shortmess+=I

" substitute global {{{1
"set gdefault

" encoding {{{1
set encoding=utf-8

" modeline {{{1
set modeline

" tube {{{1
let g:tube_terminal = 'iterm'

" projects {{{1
let g:ctrlp_mruf_relative = 1
let g:ctrlp_show_hidden = 1
" nnoremap <silent> so :exec g:ctrlp_mruf_relative == 0 ? "let g:ctrlp_mruf_relative = 1 \| CtrlPMRUFiles" : "let g:ctrlp_mruf_relative = 0 \| CtrlPMRUFiles"<CR>
let g:ctrlp_working_path_mode = 0

" signify {{{1
let g:signify_sign_overwrite = 0
let g:signify_sign_color_guifg_add      = '#009900'
let g:signify_sign_color_guifg_change   = '#bbbb00'
let g:signify_sign_color_guifg_delete   = '#ff2222'

" supertab {{{1

" youcompleteme {{{1
" let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<CR>']
"let g:ycm_filetype_specific_completion_to_disable = { 'ruby' : 0 }
"let g:EclimCompletionMethod = 'omnifunc'

" markdown {{{1
autocmd FileType markdown setlocal textwidth=78

" vim-ruby {{{1
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

" gundo {{{1
nnoremap su :GundoToggle<CR>

" textobj {{{1
runtime macros/matchit.vim

" CamelCase {{{1
for s:mode in ['n', 'o', 'v']
  for s:motion in ['w', 'b', 'e']
    let s:targetMapping = '<Plug>CamelCaseMotion_' . s:motion
    execute (s:mode ==# 'v' ? 'x' : s:mode) . 'map <silent> ' . toupper(s:motion) . ' ' . s:targetMapping
  endfor
endfor
for s:mode in ['o', 'v']
  for s:motion in ['w', 'b', 'e']
    let s:targetMapping = '<Plug>CamelCaseMotion_i' . s:motion
    execute (s:mode ==# 'v' ? 'x' : s:mode) . 'map <silent> i' . toupper(s:motion) . ' ' . s:targetMapping 
  endfor
endfor

" last-position-jump {{{1
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" tinykeymap {{{1
let g:tinykeymap#mapleader = '<Space>m'
let g:tinykeymaps_default = []

" togglelist {{{1
let g:toggle_list_no_mappings = 0
nnoremap <silent> <space>l :call ToggleLocationList()<CR>
nnoremap <silent> <space>q :call ToggleQuickfixList()<CR>

" quifixsigns {{{1
let g:quickfixsigns_classes=['qfl', 'breakpoints']

" paredit {{{1
let g:paredit_smartjump = 1
let g:paredit_leader = '§'

" signature {{{1
let g:SignatureDisableMenu = 1

" yankstack {{{1
let g:yankstack_map_keys = 0
nmap <C-p> <Plug>yankstack_substitute_older_paste
nmap <C-n> <Plug>yankstack_substitute_newer_paste
call yankstack#setup()

" Y like D and C {{{1
map Y y$

" OSX clipboard {{{1
noremap <space>y "*y
noremap <space>yy "*yy
noremap <space>Y "*y$

" markdown {{{1
augroup markdown
  autocmd!
  autocmd FileType markdown iabbr \|\|\| \|\|\|<cr>--- \| ---
augroup END

" ruby {{{1
augroup ruby
  autocmd!
  autocmd FileType ruby,eruby iabbr bpry require'pry'; binding.pry
augroup END

fu! CustomFoldText()
    "get first non-blank line
    let fs = v:foldstart
    while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
    endwhile
    if fs > v:foldend
        let line = getline(v:foldstart)
    else
        let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
    endif

    let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
    let foldSize = 1 + v:foldend - v:foldstart
    let foldSizeStr = " " . foldSize . " lines "
    let foldLevelStr = repeat("+--", v:foldlevel)
    let lineCount = line("$")
    let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%] "
    let expansionString = repeat(" ", w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
    return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endf

" fold on ruby comment {{{1
autocmd FileType ruby,eruby,zsh
      \ setlocal foldmethod=expr |
      \ setlocal foldexpr=getline(v:lnum)=~'^\\s*#' |
      \ setlocal foldtext=CustomFoldText() |
      \ exe "normal zM"

" fold on vim comment {{{1
autocmd FileType vim
      \ setlocal foldmethod=expr |
      \ setlocal foldexpr=getline(v:lnum)=~'^\\s*\"' |
      \ setlocal foldtext=CustomFoldText() |
      \ exe "normal zM"

" fold on groc comment {{{1
autocmd FileType javascript
      \ setlocal foldmethod=expr |
      \ setlocal foldexpr=getline(v:lnum)=~'^\\s*\\*' |
      \ setlocal foldtext=CustomFoldText() |
      \ exe "normal zM"

" fold on groc comment {{{1
autocmd FileType java
      \ setlocal foldmethod=expr |
      \ setlocal foldexpr=getline(v:lnum)=~'^\\s*\\*' |
      \ setlocal foldtext=CustomFoldText() |
      \ exe "normal zM"

" fold on go comment {{{1
autocmd FileType go
      \ setlocal foldmethod=expr |
      \ setlocal foldexpr=getline(v:lnum)=~'^\\s*\\/\\/' |
      \ setlocal foldtext=CustomFoldText() |
      \ exe "normal zM"

" lisp and others {{{1
au BufNewFile,BufRead *.{wisp,scm,ls,shen} call PareditInitBuffer()
au BufNewFile,BufRead *.{wisp,scm,ls,shen} nmap <silent> <buffer> <space>c v(((((((:ScreenSend<cr>
au BufNewFile,BufRead *.{wisp,scm,ls,shen} vmap <silent> <buffer> <space>c :ScreenSend<cr>
au BufRead,BufNewFile *.wisp set ft=wisp
au BufRead,BufNewFile *.shen set ft=clj

" viml {{{1
autocmd FileType vim set et

" xml {{{1
let g:xml_syntax_folding = 1
set foldmethod=syntax

" diff {{{1
nnoremap <silent> <space>dt :diffthis<CR>
nnoremap <silent> <space>do :diffoff<CR>

" rainbow parentheses {{{1
let g:rainbow_active = 0
let g:rainbow_operators = 0

" fanfingtastic {{{1
let g:fanfingtastic_ignorecase = 1
let g:fanfingtastic_use_jumplist = 1

" help {{{1
autocmd FileType vim set keywordprg=":help"  " use the :help command for 'K' in .vim files
autocmd FileType help set keywordprg=":help" " use the :help command for 'K' in .vim files
autocmd FileType help nnoremap <buffer> q :q<CR>

" easymotion {{{1
let g:EasyMotion_mapping_ge = '<space><BS>'
let g:EasyMotion_mapping_gE = '<space><S-BS>'
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'
let g:EasyMotion_do_shade = 0
let g:EasyMotion_leader_key = '<Space>'

" ack {{{1
nnoremap <space>a :Ag 

" powerline {{{1
if hostname() ==# 'air.local'
  set guifont=Menlo\ for\ Powerline:h12
elseif hostname() ==# 'TOSHIBA'
  set guifont=Consolas\ for\ Powerline\ FixedD:h12
elseif hostname() ==# 'retina.local' || hostname() ==# 'tirena.local'
  set guifont=Menlo\ for\ Powerline:h14
endif
let g:Powerline_symbols = 'fancy'

" NERDTree and other sidebars {{{1
cnoremap %% <C-R>=expand('%:h').'/'<CR>
cnoremap %b ~/.vim/bundle/
let g:NERDTreeMapCWD = "<F2>"
let g:NERDTreeMapHelp = "<F1>"
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinSize = 40
let g:NERDTreeMinimalUI = 1

let NERDTreeMinimalUI = 1
" map of s {{{1
map sc :NERDTree %%<CR>
nnoremap <silent> sa :vertical resize 40<CR>
nnoremap <silent> ss :NERDTreeToggle<CR>
nnoremap <silent> s. :NERDTree .<CR>
nnoremap <silent> s/ :NERDTree <C-R>=expand('%:h').'/'<CR><CR>
nnoremap <silent> sd :TagbarToggle<CR>
nnoremap <silent> sz :CtrlPZ<CR>
nnoremap <silent> st :CtrlPFunky<CR>
nnoremap <silent> sf :CtrlP<CR>
nnoremap <silent> sb :CtrlPBuffer<CR>
nnoremap <silent> sh :h<CR>:CtrlPTag<CR>
nnoremap <silent> sw :Welcome<CR>

" CtrlP {{{1
let g:ctrlp_z_nerdtree = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_map = 'sp'
let g:ctrlp_cmd = 'CtrlPMRUFiles'
let g:ctrlp_switch_buffer = 0

" no matchparen {{{1
let loaded_matchparen = 1

" solarized {{{1
colorscheme solarized
set background=dark

" no sound {{{1
set visualbell

" map {{{1
nnoremap <BS> ge
nnoremap <S-BS> gE
nnoremap <space> <nop>
nnoremap s <nop>
nnoremap <silent> <space><space> :noh<CR>

" List chars {{{1
set list
set listchars=tab:\ \ 
set listchars+=trail:·
set listchars+=extends:>
set listchars+=precedes:<

" misc {{{1
set noshowmode
set notimeout
set history=2000
set laststatus=2
set showcmd
set nowrap
set number
set backspace=indent,eol,start
set cursorline
set foldlevel=1000

" search {{{1
set ignorecase
set nosmartcase
set showmatch
set incsearch
set hlsearch

" indent {{{1
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent
set expandtab

" autoread and autowrite {{{1
if hostname() =~ 'local'
  augroup save
    au!
    au FocusLost * wall
  augroup END
endif
set nobackup
set noswapfile
set nowritebackup
set autoread
set autowrite
set autowriteall

" persistent-undo {{{1
set undodir=~/.vim/undo
set undofile

" remove ui {{{1
if has("gui_running")
  set guioptions=e
else
  set noesckeys
endif

" ratpoison {{{1
nnoremap <MiddleMouse>   <Nop>
nnoremap <2-MiddleMouse> <Nop>
nnoremap <3-MiddleMouse> <Nop>
nnoremap <4-MiddleMouse> <Nop>

inoremap <MiddleMouse>   <Nop>
inoremap <2-MiddleMouse> <Nop>
inoremap <3-MiddleMouse> <Nop>
inoremap <4-MiddleMouse> <Nop>

" windows {{{1
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
inoremap <C-h> <Esc><C-w>h
inoremap <C-j> <Esc><C-w>j
inoremap <C-k> <Esc><C-w>k
inoremap <C-l> <Esc><C-w>l
nnoremap <space>s :sp #<cr>
nnoremap <space>v :vsp #<cr>

" split right below {{{1
set splitbelow
set splitright

" rspec {{{1
autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let
highlight def link rubyRspec Function

" less {{{1
au BufRead,BufNewFile *.less setfiletype css

" gradle {{{1
au BufRead,BufNewFile *.gradle setfiletype groovy
au BufRead,BufNewFile *.java nnoremap <silent> <buffer> <cr> :JavaSearchContext<cr>

" python {{{1
autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4
" let g:pymode_lint_checkers = ['pyflakes', 'mccabe']
let g:pymode_lint_ignore = "E302,E501,C901"

" go {{{1
autocmd FileType go setlocal tabstop=2 softtabstop=0 shiftwidth=8 noexpandtab nolist
autocmd FileType go autocmd BufWritePre <buffer> Fmt

" ghjkl {{{1
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

if hostname() ==# 'TOSHIBA'
  cd ~
"  autocmd GUIEnter * call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)
endif

" coffee ctags
" too slow
" if executable('coffeetags')
"   let g:tagbar_type_coffee = {
"         \ 'ctagsbin' : 'coffeetags',
"         \ 'ctagsargs' : '',
"         \ 'kinds' : [
"         \ 'f:functions',
"         \ 'o:object',
"         \ ],
"         \ 'sro' : ".",
"         \ 'kind2scope' : {
"         \ 'f' : 'object',
"         \ 'o' : 'object',
"         \ }
"         \ }
" endif

" open-browse {{{1
let g:netrw_nogx = 1 " disable netrw's gx mapping.
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)
