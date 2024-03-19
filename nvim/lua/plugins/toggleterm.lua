return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    size = 20,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    shade_color = "black",
    start_in_insert = true,
    direction = "float",
    close_on_exit = true,
  },
  keys = {
    { "<leader>tj", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Open bottom terminal" },
    { "<leader>tk", "<cmd>ToggleTerm direction=float<cr>", desc = "Open floating terminal" },
    { "<leader>tl", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Open right terminal" },
  },
}
