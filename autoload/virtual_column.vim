function! virtual_column#Refresh(...)
    try
        lua require("virtual-column").refresh()
    catch /E12/
        return
    endtry
endfunction
