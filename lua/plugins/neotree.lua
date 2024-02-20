return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<C-n>", ":Neotree filesystem reveal left<cr>", desc = "Open Neotree on right side" },
    { "<leader>bf", ":Neotree buffers reveal float<cr>", desc = "Shows Neotree buffers" },
  },
}
