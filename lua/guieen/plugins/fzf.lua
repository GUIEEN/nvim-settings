return {
  {
    "junegunn/fzf",
    dependencies = {
      "junegunn/fzf.vim",
    },
    config = function()
      -- if vim.fn.has("nvim") == 1 then
      --   vim.api.nvim_set_keymap("i", "<S-Tab>", "<Plug>(fzf-complete-line)", {})
      -- end
    end,
  },
}
