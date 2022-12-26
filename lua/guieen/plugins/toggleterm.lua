local setup, toggleterm = pcall(require, "toggleterm")
if not setup then
	return
end

toggleterm.setup({
	-- size can be a number or function which is passed the current terminal
	size = function(term)
		if term.direction == "horizontal" then
			return 15
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.4
		end
	end,
	-- open_mapping = [[<leader>tt]],
	open_mapping = [[<C-`>]],
	-- open_mapping = false,
})

function _G.set_terminal_keymaps()
	local opts = { noremap = true }
	vim.api.nvim_buf_set_keymap(0, "t", "<esc>", [[<c-\><c-n>]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "jk", [[<c-\><c-n>]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<c-h>", [[<c-\><c-n><c-w>h]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<c-j>", [[<c-\><c-n><c-w>j]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<c-k>", [[<c-\><c-n><c-w>k]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<c-l>", [[<c-\><c-n><c-w>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! termopen term://* lua set_terminal_keymaps()")

-- local function set_terminal_keymaps()
-- 	local opts = { buffer = 0 }
-- 	vim.keymap.set("t", "<esc>", [[<c-\><c-n>]], opts)
-- 	vim.keymap.set("t", "jk", [[<c-\><c-n>]], opts)
-- 	vim.keymap.set("t", "<c-h>", vim.cmd.wincmd("h"), opts)
-- 	vim.keymap.set("t", "<c-j>", vim.cmd.wincmd("j"), opts)
-- 	vim.keymap.set("t", "<c-k>", vim.cmd.wincmd("k"), opts)
-- 	vim.keymap.set("t", "<c-l>", vim.cmd.wincmd("l"), opts)
-- end
--
-- -- if you only want these mappings for toggle term use term://*toggleterm#* instead
-- vim.api.nvim_create_autocmd("termopen", {
-- 	pattern = [[term://*]],
-- 	callback = set_terminal_keymaps,
-- })

-- local opts = {}
-- vim.keymap.set("t", "<esc>", [[<c-\><c-n>]], opts)
-- -- the opts entry is optional, btw:
-- -- vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])
-- vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
-- vim.keymap.set("t", "<C-h>", vim.cmd.wincmd("h"), opts)
-- vim.keymap.set("t", "<C-j>", vim.cmd.wincmd("j"), opts)
-- vim.keymap.set("t", "<C-k>", vim.cmd.wincmd("k"), opts)
-- vim.keymap.set("t", "<C-l>", vim.cmd.wincmd("l"), opts)
-- -- I map these binds to both terminal and insert mode like:
-- -- vim.keymap.set({'t', 'i'}, '<C-h>', vim.cmd.wincmd("h"), opts)
