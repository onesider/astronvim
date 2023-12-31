return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  -- completion
   { import = "astrocommunity.completion.cmp-cmdline" },
  -- diagnostics
   -- { import = "astrocommunity.diagnostics.lsp_lines-nvim" },
   { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- editing-support
   { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
   -- { import = "astrocommunity.editing-support.nvim-regexplainer" },
  -- LSP
   { import = "astrocommunity.lsp.garbage-day-nvim" },
   { import = "astrocommunity.lsp.lsp-inlayhints-nvim" },
  -- programming-language-support
   { import = "astrocommunity.programming-language-support.csv-vim" },
  -- workflow
   -- { import = "astrocommunity.workflow.bad-practices-nvim" },
   -- { import = "astrocommunity.workflow.hardtime-nvim" },
  -- pack
   { import = "astrocommunity.pack.python" },
   -- { import = "astrocommunity.pack.java" },
   { import = "astrocommunity.pack.html-css" },
   { import = "astrocommunity.pack.bash" },
   -- { import = "astrocommunity.pack.cpp" },
   { import = "astrocommunity.pack.docker" },
   -- { import = "astrocommunity.pack.go" },
   { import = "astrocommunity.pack.json" },
   { import = "astrocommunity.pack.lua" },
   -- { import = "astrocommunity.pack.php" },
   -- { import = "astrocommunity.pack.rust" },
   { import = "astrocommunity.pack.terraform" },
   { import = "astrocommunity.pack.typescript-all-in-one" },
   { import = "astrocommunity.pack.yaml" },
}
