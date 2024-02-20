local keymaps = require("config.keymaps")
local ui = require("config.ui")

vim.g.mapleader = " "

keymaps.setup()
ui.setup()
