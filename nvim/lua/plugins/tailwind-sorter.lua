return {
  "laytan/tailwind-sorter.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
  build = "cd formatter && npm ci && npm run build",
  config = true,
  on_save_pattern = {
    "*.js",
    "*.ts",
    "*.jsx",
    "*.tsx",
    "*.css",
    "*.scss",
    "*.html",
    "*.vue",
    "*.svelte",
    "*.mdx",
    "*.md",
  },
}
