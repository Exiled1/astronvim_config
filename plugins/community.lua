return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim"},
  { import = "astrocommunity.editing-support.nvim-devdocs"},
  { import = "astrocommunity.completion.copilot-lua"},
  { import = "astrocommunity.completion.copilot-lua-cmp"},
  { import = "astrocommunity.lsp.garbage-day-nvim"},
  { import = "astrocommunity.workflow.hardtime-nvim"},
}
