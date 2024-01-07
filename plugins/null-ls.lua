return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = {
      ensure_installed = {
        "autopep8",
      },
    },
    config = function(_, opts)
      local null_ls = require "null-ls"
      null_ls.setup {
        sources = {
          null_ls.builtins.formatting.autopep8,
        },
        on_attach = function(client, bufnr)
          local lsp_format_modifications = require "lsp-format-modifications"
          lsp_format_modifications.attach(client, bufnr, { format_on_save = false })
        end,
        -- Bro how tf do I make this just do stuff when it's in a git directory. This is pain.
        autopep8 = function()
          null_ls.register(null_ls.builtins.formatting.autopep8.with {
            filetypes = { "py", "python" },
          })
        end,
      }
    end,
  },
}
