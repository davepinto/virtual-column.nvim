if exists('g:loaded_virtual_column') || !has('nvim-0.5.0')
    finish
endif
let g:loaded_virtual_column = 1

function s:try(cmd)
    try
        execute a:cmd
    catch /E12/
        return
    endtry
endfunction

command! VirtualColumnEnable call s:try('lua require("virtual-column").enable()')
command! VirtualColumnDisable call s:try('lua require("virtual-column").disable()')
command! VirtualColumnRefresh call s:try('lua require("virtual-column").refresh()')

augroup VirtualColumnAutogroup
    autocmd!
    autocmd OptionSet list VirtualColumnRefresh
    autocmd FileChangedShellPost,TextChanged,TextChangedI,CompleteChanged,BufWinEnter,FileType * VirtualColumnRefresh
augroup END
