require("guieen.plugins-setup") -- order matters

require("guieen.core.options")
require("guieen.core.keymaps")
require("guieen.core.colorscheme")

require("guieen.plugins.comment")
require("guieen.plugins.nvim-tree")
require("guieen.plugins.lualine")
require("guieen.plugins.telescope")
require("guieen.plugins.nvim-cmp")
require("guieen.plugins.lsp.mason")
require("guieen.plugins.lsp.lspconfig")
require("guieen.plugins.lsp.lspsaga")
require("guieen.plugins.lsp.null-ls")
require("guieen.plugins.autopairs")
require("nvim-treesitter.install").compilers = { "gcc" }
require("guieen.plugins.treesitter")
require("guieen.plugins.gitsigns")
require("guieen.plugins.toggleterm")
