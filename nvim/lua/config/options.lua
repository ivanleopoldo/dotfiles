-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

local conf = require("private.simplenote")

vim.g.SimplenoteUsername = conf.Username
vim.g.SimpleNotePassword = conf.Password
