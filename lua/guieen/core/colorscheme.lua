-- vim.cmd("colorscheme nightfly")
-- instead of direct calling vim cmd, use protected way

local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
	print("Colorscheme not found!")
	return
end
