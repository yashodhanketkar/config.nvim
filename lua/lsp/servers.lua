local M = {}

-- stylua: ignore start
M.configs = vim.tbl_deep_extend(
  "force",
  require("lsp.configs.backend").configs,
  require("lsp.configs.docs").configs,
  require("lsp.configs.mobile").configs,
  require("lsp.configs.python").configs,
  require("lsp.configs.system").configs,
  require("lsp.configs.web").configs
)
-- stylua: ignore end

return M
