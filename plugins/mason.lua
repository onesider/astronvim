-- customize mason plugins
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "lua_ls",
        "pyright"
      })
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        -- "prettier",
        -- "stylua",
        -- "black",
        -- "flake8"
        "pyright",
      })
      opts.handlers = {
        -- jvascript용이거키면 속도저하가 꽤오는데?? -_-
        -- prettier = function()
        --     require("null-ls").register(require("null-ls").builtins.formatting.prettier.with {
        --       condition = function(utils)
        --         return utils.root_has_file "package.json"
        --           or utils.root_has_file ".prettierrc"
        --           or utils.root_has_file ".prettierrc.json"
        --           or utils.root_has_file ".prettierrc.js"
        --       end,
        --     })
        --   end,
        --   -- for prettierd
        --   prettierd = function()
        --     require("null-ls").register(require("null-ls").builtins.formatting.prettierd.with {
        --       condition = function(utils)
        --         return utils.root_has_file "package.json"
        --           or utils.root_has_file ".prettierrc"
        --           or utils.root_has_file ".prettierrc.json"
        --           or utils.root_has_file ".prettierrc.js"
        --       end,
        --     })
        --   end,
        --   -- For eslint_d:
        --   eslint_d = function()
        --     require("null-ls").register(require("null-ls").builtins.diagnostics.eslint_d.with {
        --       condition = function(utils)
        --         return utils.root_has_file "package.json"
        --           or utils.root_has_file ".eslintrc.json"
        --           or utils.root_has_file ".eslintrc.js"
        --       end,
        --     })
        --   end,
      }
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "python",
        "go",
        "java",
        "javascript",
        "rust",
      })
    end,
  },
}
