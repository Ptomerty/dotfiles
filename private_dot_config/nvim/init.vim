" Remove startup lag by disabling Python.
let g:loaded_python_provider = 0
let g:loaded_python3_provider = 0
let g:python_host_prog  = ''
let g:python3_host_prog = ''


" Enable relative/absolute number toggling. Source: https://jeffkreeftmeijer.com/vim-number/
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END
