-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local colors = require("constant.colors")

vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter" }, {
  callback = function()
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = colors.red })
    vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = colors.gituntracked })
    vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = colors.gitmodified })
    vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { fg = colors.background })
    vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { fg = colors.subtext2 })
    vim.api.nvim_set_hl(0, "NeoTreeFloatTitle", { fg = colors.subtext2 })
    vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { fg = colors.subtext2 })
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = colors.red })

    vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = colors.subtext2 })
    vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = colors.subtext2 })
    vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = colors.subtext2 })
    vim.api.nvim_set_hl(0, "TelescopePromptNormal", { fg = colors.subtext2 })
    vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = colors.subtext2 })
    vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = colors.subtext2 })

    vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { fg = colors.subtext2 })
    vim.api.nvim_set_hl(0, "NoiceCmdlinePopupTitle", { fg = colors.subtext2 })
    vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { fg = colors.subtext2 })

    vim.api.nvim_set_hl(0, "@keyword", { fg = colors.red })
    vim.api.nvim_set_hl(0, "@tag", { fg = colors.red })
  end,
})
