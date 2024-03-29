-- * leader key allows us to setup a bunch of different
-- * custom keyboard shortcuts that don't crash with the vim defaults
-- * essentially all of these key maps we define will be prefixed with the leader key
-- vim.g.mapleader = " " -- default is \

local keymap = vim.keymap

-- ###############################
-- ###### general keymaps
-- ###############################

keymap.set("i", "jk", "<ESC>")             -- insert mode, "jk" will be the same as the ESC

keymap.set("n", "<leader>nh", ":nohl<CR>") -- normal mode, clear search highlight

keymap.set("n", "x", '"_x')                -- deleted single word won't be copied into a register

-- ###############################
-- ###### increment/decrement number
-- ###############################
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v")        -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s")        -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=")        -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>")    -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>")   -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>")     -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>")     -- go to previous tab

-- ###############################
-- ###### plugin keymaps
-- ###############################

-- ###############################
-- ###### vim-maximizer
-- ###############################
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- ###############################
-- ###### nvim-tree
-- ###############################
keymap.set("n", "<leader>bb", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>bf", ":NvimTreeFindFile<CR>")
keymap.set("n", "<leader>b+", ":NvimTreeResize +5<CR>")
keymap.set("n", "<leader>b-", ":NvimTreeResize -5<CR>")

-- ###############################
-- ###### telescope
-- ###############################

-- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
-- find string in current working directory as you type
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")   -- find global
-- find string under cursor in current working directory
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find here
-- list open buffers in current neovim instance
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")     -- find buffer
-- list available help tags
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

-- ###############################
-- ###### toggleterm
-- ###############################
keymap.set("n", "<leader>ttt", ":ToggleTerm<CR>")
keymap.set("n", "<leader>ttv", ":ToggleTerm direction=vertical<CR>")
