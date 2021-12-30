local npairs = require'nvim-autopairs'
local Rule   = require'nvim-autopairs.rule'

npairs.setup({
    enable_check_bracket_line = false,
    map_c_w = true,
  })

npairs.add_rules {
  Rule(' ', ' ')
    :with_pair(function (opts)
      local pair = opts.line:sub(opts.col - 1, opts.col)
      return vim.tbl_contains({ '()', '[]', '{}' }, pair)
    end),

    Rule('( ', ' )')
      :with_pair(function() return false end)
      :with_move(function(opts)
        return opts.prev_char:match('.%)') ~= nil
      end)
        :use_key(')'),

      Rule('{ ', ' }')
        :with_pair(function() return false end)
        :with_move(function(opts)
          return opts.prev_char:match('.%}') ~= nil
        end)
          :use_key('}'),

        Rule('[ ', ' ]')
          :with_pair(function() return false end)
          :with_move(function(opts)
            return opts.prev_char:match('.%]') ~= nil
          end)
            :use_key(']')
        }
