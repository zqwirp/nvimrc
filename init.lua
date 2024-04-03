-- INITIAL CONFIGURATION

-- LOAD MODULES
require("plugins")
require("settings")
require("keymaps")

vim.api.nvim_command([[
    function! FormatC()
        silent execute '!clang-format -i --style=file ' . expand('%')
        edit
    endfunction
]])

vim.api.nvim_command(":command! FormatC call FormatC()")
