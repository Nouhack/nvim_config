-- Show file tree
<<<<<<< HEAD
--vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
=======

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
>>>>>>> 5d4186b70c6faa5995055b11b7b0214c75926449



-- Move the selected up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Copy to os clipboard
vim.keymap.set("v", "<leader>y", "\"+y")

-- Go to the next buffer
vim.api.nvim_set_keymap('n', '<C-n>', ':bnext<CR>', { noremap = true, silent = true })

-- Search and replace the word in the current file
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.api.nvim_set_keymap(
    "n",
    "<space>fb",
    ":Telescope file_browser<CR>",
    { noremap = true }
)
