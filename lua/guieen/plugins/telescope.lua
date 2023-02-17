-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	print("[telescope] telescope not installed")
	return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	print("[telescope] telescope.actions not installed")
	return
end

-- https://github.com/nvim-telescope/telescope.nvim#suggested-dependencies
-- BurntSushi/ripgrep is required for live_grep and grep_string and is the first priority for find_files.
local is_ripgrep_installed = vim.fn.executable("rg")
if is_ripgrep_installed == 0 then
	error("[telescope] ripgrep NOT_FOUND. ripgrep is required for live_grep. `brew install ripgrep`", 2)
end

-- configure telescope
telescope.setup({
	-- configure custom mappings
	defaults = {
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous, -- move to prev result
				["<C-j>"] = actions.move_selection_next, -- move to next result
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
			},
		},
	},
})

telescope.load_extension("fzf")
