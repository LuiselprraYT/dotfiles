---- options

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

vim.opt.termguicolors = true

vim.cmd("syntax enable")

---- plugins

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
    Plug 'Tsuzat/NeoSolarized.nvim'
    Plug 'luukvbaal/nnn.nvim'
    Plug 'brenoprata10/nvim-highlight-colors'
    Plug 'nvim-lualine/lualine.nvim'
vim.call('plug#end')

require('nnn').setup({
   explorer = {
	width = 32,
   },
   windownav = {
       left = "<C-h>",
       right = "<C-l>",
   },
})
require('nvim-highlight-colors').setup()
require('lualine').setup ({
    options = {
	section_separators = '',
	component_separators = '',
    },
})

vim.cmd("colorscheme NeoSolarized")

---- keybinds

-- plugins

vim.keymap.set("n", "<C-n>", ":NnnPicker<CR>")
vim.keymap.set("n", "<C-e>", ":NnnExplorer<CR>")

-- window movement

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- window resize

vim.keymap.set("n", "<A-h>", "<C-w><")
vim.keymap.set("n", "<A-j>", "<C-w>-")
vim.keymap.set("n", "<A-k>", "<C-w>+")
vim.keymap.set("n", "<A-l>", "<C-w>>")

-- line wrap movement

vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "0", "g0")
vim.keymap.set("n", "$", "g$")
