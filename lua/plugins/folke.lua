return {
  "folke/neodev.nvim",
  {"folke/which-key.nvim",
    config = function()
      vim.cmd("map <leader><leader>wk :WhichKey<cr>")
    end
  },
  { "folke/neoconf.nvim", cmd = "Neoconf" },
}
