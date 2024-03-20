local colors = require("constant.colors")
local Util = require("lazyvim.util")

return {
  "nvim-lualine/lualine.nvim",
  init = function()
    vim.g.lualine_laststatus = vim.o.laststatus
    if vim.fn.argc(-1) > 0 then
      -- set an empty statusline till lualine loads
      vim.o.statusline = " "
    else
      -- hide the statusline on the starter page
      vim.o.laststatus = 0
    end
  end,
  opts = function()
    local lualine_require = require("lualine_require")
    lualine_require.require = require

    local icons = require("lazyvim.config").icons

    vim.o.laststatus = vim.g.lualine_laststatus
    return {
      options = {
        globalstatus = true,
        disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
        theme = {
          normal = {
            a = { bg = colors.background, fg = colors.pink, gui = "bold" },
            b = { bg = colors.background, fg = colors.subtle },
            z = { bg = colors.background, fg = colors.subtext },
          },
          insert = {
            a = { bg = colors.background, fg = colors.purple, gui = "bold" },
            b = { bg = colors.background, fg = colors.subtle },
            z = { bg = colors.background, fg = colors.subtext },
          },
          visual = {
            a = { bg = colors.background, fg = colors.cyan, gui = "bold" },
            b = { bg = colors.background, fg = colors.subtle },
            z = { bg = colors.background, fg = colors.subtext },
          },
          replace = {
            a = { bg = colors.background, fg = colors.red, gui = "bold" },
            b = { bg = colors.background, fg = colors.subtle },
            z = { bg = colors.background, fg = colors.subtext },
          },
          command = {
            a = { bg = colors.background, fg = colors.blue, gui = "bold" },
            b = { bg = colors.background, fg = colors.subtle },
            z = { bg = colors.background, fg = colors.subtext },
          },
          inactive = {
            a = { bg = colors.background, fg = colors.pink, gui = "bold" },
            b = { bg = colors.background, fg = colors.subtle },
            z = { bg = colors.background, fg = colors.subtext },
          },
        },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {
          Util.lualine.root_dir(),
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
          { Util.lualine.pretty_path(), separator = "" },
          {
            "filetype",
            icon_only = true,
            separator = "",
          },
        },
      },
      extensions = { "neo-tree", "lazy" },
    }
  end,
}
