return {
  "kdheepak/lazygit.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("telescope").load_extension("lazygit")
    if vim.fn.has("nvim") == 1 and vim.fn.executable("nvr") == 1 then
      vim.env.GIT_EDITOR = "nvr -cc split --remote-wait +'set bufhidden=wipe'"
    end
    local keymap = vim.keymap -- for conciseness
    keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open LazyGit" })
  end,
}
