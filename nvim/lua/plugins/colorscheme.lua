return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- must load before other UI plugins
    opts = {
      flavour = "mocha",
      transparent_background = false,
      color_overrides = {
        mocha = {
          base = "#121212",
          mantle = "#121212",
          crust = "#121212",
        },
      },
    },
  },

  -- Tell LazyVim to use this colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  -- Force background after everything loads (prevents overrides)
  {
    "nvim-lua/plenary.nvim",
    config = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
          local bg = "#121212"
          vim.api.nvim_set_hl(0, "Normal", { bg = bg })
          vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg })
          vim.api.nvim_set_hl(0, "SignColumn", { bg = bg })
          vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = bg })
        end,
      })
    end,
  },
}
