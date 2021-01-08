" =============================================================================
" Filename: autoload/data.vim
" Author: Enze Li
" License: MIT License
" Last Change: 2021/01/08 9:05:01.
" =============================================================================

let s:save_cpo = &cpo
set cpo&vim

let s:k_dict_raw = {
\'mutex_lock':'mutex_unlock',
\'spin_lock':'spin_unlock',
\'spin_lock_irq':'spin_unlock_irq',
\}

let w:k_dict = {}

function! data#init() abort
  "echo "init"
  for i in items(s:k_dict_raw)
    let w:k_dict[get(i,0)] = get(i,1)
    let w:k_dict[get(i,1)] = get(i,0)
    "echo len(s:k_dict)
  endfor
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

