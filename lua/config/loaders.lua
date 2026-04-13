local node_path = "/home/lou/.nvm/versions/node/v24.13.0/bin/node"
local nvim_bin = "/home/lou/.nvm/versions/node/v24.13.0/bin"

vim.g.node_host_prog = node_path
vim.env.PATH = nvim_bin .. ":" .. vim.env.PATH
