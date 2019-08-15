filetype plugin indent on

:set number
:highlight LineNr ctermfg=0

:set colorcolumn=81
:highlight ColorColumn ctermbg=0

fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

au BufRead,BufNewFile *.md set filetype=text

map <C-c> :s/^/\/\//<Enter>
map <C-u> :s/^\/\///<Enter>

map <C-s> :w!

let c_no_curly_error=1

set rtp+=~/.fzf

" All tabs should actually be spaces, please                                    
setlocal tabstop=4                                                              
setlocal expandtab                                                              
                                                                                 
" Tab autocomplete behavior                                                      
set wildmode=longest,list,full                                                  
set wildmenu

