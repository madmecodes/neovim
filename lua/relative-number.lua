-- Enable line numbers and relative line numbers
vim.wo.number = true
vim.wo.relativenumber = false

-- Function to toggle relative numbers
local function toggle_relative_numbers()
	vim.wo.relativenumber = not vim.wo.relativenumber
end

-- Set up a keymapping to toggle relative numbers
vim.keymap.set(
	"n",
	"<leader>tn",
	toggle_relative_numbers,
	{ noremap = true, silent = true, desc = "Toggle relative numbers" }
)
