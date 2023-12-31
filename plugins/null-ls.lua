local utils = require "astronvim.utils"

return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,
      --
      -- python setting
      null_ls.builtins.formatting.black,
      null_ls.builtins.formatting.isort,
      -- null_ls.builtins.formatting.black.with({
      --   command = "black",
      --   args = { "--stdin-filename", "$FILENAME", "--quiet", "-" },
      --   filetypes = { "python" },
      -- }),
      -- null_ls.builtins.formatting.isort.with({
      --   command = "isort",
      --   args = { "--stdout", "--filename", "$FILENAME", "-" },
      --   filetypes = { "python" },
      -- }),
      -- null_ls.builtins.diagnostics.flake8.with({
      --   command = "flake8",
      --   args = { "--ignore=E501,E203,E302,E231,E221,E251,E225,E226,E711,E261,E123,E303,E126,E275,E265,E722,E121,E116,E222,W293,W291,W292,F541,F821,F811,F401,F841" },
      --   filetypes = { "python" },
      -- }),
      -- null_ls.builtins.diagnostics.mypy,
    }
    return config -- return final config table
  end,
}
