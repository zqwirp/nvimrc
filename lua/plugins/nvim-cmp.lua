local M = {
    "hrsh7th/nvim-cmp",
    lazy = true,

    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",

        "saadparwaiz1/cmp_luasnip",
        "L3MON4D3/LuaSnip",

        "nvim-treesitter/nvim-treesitter",
        "neovim/nvim-lspconfig",
    },

    -- cmd = "CmpStatus",
    -- keys = "<leader>cmp",
}

local has_words_before = function()
    unpack = unpack or table.unpack
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

M.config = function()
    local cmp = require("cmp")

    cmp.setup({
        snippet = {
            -- REQUIRED - you must specify a snippet engine
            expand = function(args)
                require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
            end,
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.

            -- Super-Tab like mapping https://github.com/hrsh7th/nvim-cmp/wiki/Example-mappings#super-tab-like-mapping
            ["<Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_next_item()
                    -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
                    -- that way you will only jump inside the snippet region
                elseif require("luasnip").expand_or_jumpable() then
                    require("luasnip").expand_or_jump()
                    -- elseif require("vim-snippets").jumpable(-1) then
                    --     require("vim-snippets").jump(-1)
                elseif has_words_before() then
                    cmp.complete()
                else
                    fallback()
                end
            end, { "i", "s" }),
            ["<S-Tab>"] = cmp.mapping(function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item()
                elseif require("luasnip").jumpable(-1) then
                    require("luasnip").jump(-1)
                    -- elseif require("vim-snippets").jumpable(-1) then
                    --     require("vim-snippets").jump(-1)
                else
                    fallback()
                end
            end, { "i", "s" }),
        }),
        sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "luasnip" }, -- For luasnip users.
        }, {
            { name = "buffer" },
        }),
        -- window = {
        --     completion = cmp.config.window.bordered(),
        --     documentation = cmp.config.window.bordered(),
        -- },
    })

    -- Set configuration for specific filetype.
    cmp.setup.filetype("gitcommit", {
        sources = cmp.config.sources({
            { name = "git" }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
        }, {
            { name = "buffer" },
        })
    })

    -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({ '/', '?' }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
            { name = "buffer" }
        }
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
            { name = "path" }
        }, {
            { name = "cmdline" }
        }),
        matching = { disallow_symbol_nonprefix_matching = false }
    })

    -- LSP CONFIGURATION
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    require("lspconfig").bashls.setup({
        capabilities = capabilities
    })
    require("lspconfig").gopls.setup {
        capabilities = capabilities
    }
    require("lspconfig").tsserver.setup({
        capabilities = capabilities
    })
    require("lspconfig").eslint.setup({
        capabilities = capabilities
    })
    require("lspconfig").html.setup({
        capabilities = capabilities
    })
    require("lspconfig").cssls.setup({
        capabilities = capabilities
    })
    require("lspconfig").intelephense.setup({
        capabilities = capabilities
    })
    require("lspconfig").pyright.setup({
        capabilities = capabilities
    })
    require("lspconfig").clangd.setup({
        capabilities = capabilities
    })
    -- require("lspconfig").sqlls.setup({
    --     capabilities = capabilities
    -- })
    require("lspconfig").lua_ls.setup({
        capabilities = capabilities,
        on_init = function(client)
            local path = client.workspace_folders[1].name
            if vim.loop.fs_stat(path .. '/.luarc.json') or vim.loop.fs_stat(path .. '/.luarc.jsonc') then
                return
            end

            client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                runtime = {
                    -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                    version = 'LuaJIT'
                },
                -- Make the server aware of Neovim runtime files
                workspace = {
                    checkThirdParty = false,
                    library = {
                        vim.env.VIMRUNTIME
                        -- Depending on the usage, you might want to add additional paths here.
                        -- "${3rd}/luv/library"
                        -- "${3rd}/busted/library",
                    }
                    -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
                    -- library = vim.api.nvim_get_runtime_file("", true)
                }
            })
        end,
        settings = {
            Lua = {}
        }
    })
end

return M
