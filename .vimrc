"set t_Co=256
set background=dark
color molokai

set nofoldenable
set nospell
set noshowmatch
set nospell
set nohlsearch
set hidden
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoread
set nobackup
set nowritebackup
set noswapfile
set noshowcmd
set shortmess+=I
set guioptions=
set vb t_vb=
set mousehide
set synmaxcol=2048
set mouse=
set guioptions=acg
set nolist
"set cpoptions=ces$
"set scrolljump=5
"set scrolloff=0
"set ic

if has('gui_running')
  let g:SuperTabLongestHighlight = 1
endif
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:NERDTreeWinSize = 60
let g:DisableAutoPHPFolding = 1
let g:loaded_delimitMate = 1
let g:loaded_matchparen = 1
let g:loaded_showmarks = 1
let g:autoclose_loaded = 1

"let mapleader = ","

unmap <leader>et
unmap <leader>ev
unmap <leader>es
unmap <leader>ew
unmap <leader>jt
cunmap w!!
cunmap cwd
cunmap cd.

nmap ; :
map! jj <esc>
imap jj <esc>

noremap <silent> q :q<cr>

noremap <silent> <leader>h :wincmd h<cr>
noremap <silent> <leader>j :wincmd j<cr>
noremap <silent> <leader>k :wincmd k<cr>
noremap <silent> <leader>l :wincmd l<cr>
noremap <silent> <leader>cj :wincmd j<cr>:close<cr>
noremap <silent> <leader>ck :wincmd k<cr>:close<cr>
noremap <silent> <leader>ch :wincmd h<cr>:close<cr>
noremap <silent> <leader>cl :wincmd l<cr>:close<cr>
noremap <silent> <leader>ml <c-w>L
noremap <silent> <leader>mk <c-w>K
noremap <silent> <leader>mh <c-w>H
noremap <silent> <leader>mj <c-w>J

noremap <silent> <leader>cc :close<cr>
noremap <silent> <leader>cw :cclose<cr>

nmap <silent> <leader>p :set invpaste<cr>:set paste?<cr>
nmap <silent> <leader>w :set invwrap<cr>:set wrap?<cr>
nmap <silent> <leader>h :set invcul<cr>:set cul?<cr>
nmap <silent> <leader>n :set invnumber<cr>:set number?<cr>
nmap <silent> <leader>m :call toggle:mouse()<cr>
nmap <silent> <leader>hl :set invhls<cr>:set hls?<cr>

nmap <silent> <leader>da :exec "1," . bufnr('$') . "bd"<cr>

nmap <silent> <leader>l :BufExplorer<cr>
nmap <silent> <leader>j :NERDTreeFind<cr>

nmap <silent> <f7> :NERDTreeToggle<cr>
nmap <silent> <f4> :!ctags -R --languages=php<cr>
nmap <silent> <f5> :call toggle:mouse()<cr>

map <Space> <PageDown>

if has('gui_running')
  colorscheme molokai
  "set guifont=Monospace\ 16
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else
  imap <nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
endif

function! toggle:mouse()
  if &mouse == "a"
    set mouse=
  else
    set mouse=a
  endif
endfunction

"hi CursorLine ctermbg=235 cterm=none                                                                                                       
"hi CursorLine ctermbg=000 cterm=none
"hi LineNr ctermfg=250 ctermbg=234
"hi CursorLineNr ctermfg=130

"noremap <silent> ,bd :bd<cr>
"inoremap <silent> <Esc> <Esc>`^
"au BufNewFile,BufRead *.php unmap <buffer>;
"syntax sync minlines=200
"let loaded_matchparen = 1
"cunmap wQ
"nmap <silent> <leader>fc :FufMruCmd<cr>
