-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- 下移
vim.keymap.set("n", "<A-s>", "<cmd>m .+1<cr>== ", { desc = "Move down" })
vim.keymap.set("v", "<A-s>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })

-- 上移 (假设用 Alt + w)
vim.keymap.set("n", "<A-w>", "<cmd>m .-2<cr>== ", { desc = "Move up" })
vim.keymap.set("v", "<A-w>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

local keymap = vim.keymap

-- Ctrl + C 复制 (在可视模式下将选中文本复制到系统剪贴板)
keymap.set("v", "<C-c>", '"+y', { desc = "Copy to clipboard" })

-- Ctrl + X 剪切 (在可视模式下剪切到系统剪贴板)
keymap.set("v", "<C-x>", '"+x', { desc = "Cut to clipboard" })

-- Ctrl + V 粘贴 (在模式下从系统剪贴板粘贴)
-- 模式说明：n: 普通模式, v: 可视模式, i: 插入模式, c: 命令行模式
keymap.set({ "n", "v" }, "<C-v>", '"+p', { desc = "Paste from clipboard" })
keymap.set("i", "<C-v>", "<C-r>+", { desc = "Paste from clipboard in insert mode" })
keymap.set("c", "<C-v>", "<C-r>+", { desc = "Paste from clipboard in command mode" })

-- 额外建议：Ctrl + A 全选
keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })
