-- setup mason
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- setup installed lsps
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "ocamllsp" }
})

-- keymaps
local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definitions, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementations, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- setup lsps using lspconfig
local lsp = require("lspconfig")
lsp.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
lsp.ocamllsp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  root_dir = lsp.util.root_pattern("*.opam", "esy.json", "package.json", ".git", "dune-project", "dune-workspace")
}
