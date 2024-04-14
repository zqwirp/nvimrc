-- Load modules
require("plugins")
require("settings")
require("keymaps")
require("abbreviations")

vim.api.nvim_command([[
function! FormatC()
        silent execute "!clang-format -i --style=file " . expand("%")
        edit
    endfunction
]])

vim.api.nvim_command(":command! FormatC call FormatC()")

vim.api.nvim_command([[
    function! GotoJump()
        jumps
        let j = input("Please select your jump: ")
        if j != ''
            let pattern = '\v\c^\+'
            if j =~ pattern
                let j = substitute(j, pattern, '', 'g')
                execute "normal " . j . "\<c-i>"
            else
                execute "normal " . j . "\<c-o>"
            endif
        endif
    endfunction
]])

function Greeting()
    print(vim.fn.printf('Hello from %s', 'Lua'))
end

vim.api.nvim_command(":command! Greeting lua Greeting()")
