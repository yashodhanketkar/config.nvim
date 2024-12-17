# Lou.nvim

## Table of content

- [Lou.nvim](#lounvim)
  - [Table of content](#table-of-content)
  - [Description](#description)
    - [Plugins](#plugins)
      - [Autocomplete](#autocomplete)
      - [Autopairs](#autopairs)
      - [Bats](#bats)
      - [Commentary](#commentary)
      - [CSV](#csv)
      - [Folds](#folds)
      - [Folke](#folke)
      - [Fugitive](#fugitive)
      - [Gitsigns](#gitsigns)
      - [Harpoon](#harpoon)
      - [Identline](#identline)
      - [LSP](#lsp)
      - [Lualine](#lualine)
      - [Limelight](#limelight)
      - [Neotree](#neotree)
      - [Surround](#surround)
      - [Telescope](#telescope)
      - [Themes](#themes)
      - [Tmux Navigator](#tmux-navigator)
      - [TreeSitter](#treesitter)
    - [Tips](#tips)
  - [Installation](#installation)
  - [Key bindings](#key-bindings)
    - [Plugins specific](#plugins-specific)
  - [License](#license)

## Description

Personal neovim configuration. Uses lazy.nvim for lazy loading and package management.

### Plugins

This configuration uses this plugins:

#### Autocomplete

- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [cmp-path](https://github.com/hrsh7th/cmp-path)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [lspkind](https://github.com/onsails/lspkind.nvim)

#### Autopairs

- [autopairs](https://github.com/windwp/nvim-autopairs)
- [Autotags](https://github.com/windwp/nvim-ts-autotag)

#### Bats

- [Bats](https://github.com/aliou/bats.vim)

#### Commentary

- [Commentary](https://github.com/tpope/vim-commentary)

#### CSV

- [RainbowCSV](https://github.com/cameron-wags/rainbow_csv.nvim)

#### Folds

- [UFO folds](https://github.com/kevinhwang91/nvim-ufo)
- [Promise/Async](https://github.com/kevinhwang91/promise-async)

#### Folke

- [Lazydev](https://github.com/folke/lazydev.nvim)
- [whichkey](https://github.com/folke/which-key.nvim)

#### Fugitive

- [Fugitive](https://github.com/tpope/vim-fugitive)

#### Gitsigns

- [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)

#### Harpoon

- [Harpoon](https://github.com/ThePrimeagen/harpoon/tree/harpoon2)

#### Identline

- [Identline](https://github.com/lukas-reineke/indent-blankline.nvim)

#### LSP

- [lspconfig](https://github.com/neovim/nvim-lspconfig)
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [nvim-lsp-file-operations](https://github.com/antosha417/nvim-lsp-file-operations)
- [mason](https://github.com/williamboman/mason.nvim)
- [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim)
- [mason-tool-installer](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim)
- [none-ls](https://github.com/nvimtools/none-ls.nvim)
- [mason-null-lsp](https://github.com/jay-babu/mason-null-ls.nvim)

#### Lualine

- [Lualine](https://github.com/nvim-lualine/lualine.nvim)

#### Limelight

- [Limelight](https://github.com/junegunn/limelight.vim)

#### Neotree

- [Neotree](https://github.com/nvim-neo-tree/neo-tree.nvim/tree/v3.x)
- [plenary](https://github.com/nvim-lua/plenary.nvim)
- [devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [nui](https://github.com/MunifTanjim/nui.nvim)

#### Surround

- [Surround](https://github.com/tpope/vim-surround)

#### Telescope

- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [plenary](https://github.com/nvim-lua/plenary.nvim)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)

#### Themes

- [Dracula](https://github.com/Mofiqul/dracula.nvim)
- [Gruvbox](https://github.com/ellisonleao/gruvbox.nvim)
- [Kanagawa](https://github.com/rebelot/kanagawa.nvim)

#### Tmux Navigator

- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

#### TreeSitter

- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)

### Tips

- Set `git config --global core.editor=nvim` to use neovim as default editor for git commit messages.

- Use this as starting for your neovim configuration. Delete or add packages as you wish. I use neovim and vscode (with
  vim keymaps) so my neovim configuration is pretty lightweight.

- Try to follow my plugin and configuration structure, it will make addition/removal of plugins easier. Or use your own
  but consistent structure.

## Installation

For windows users:

1. Create nvim folder inside ~User/AppData/Local/nvim (windows) or ~/.config/nvim (linux)
2. Clone this repository inside this folder via following command.

```bash
git clone https://github.com/yashodhanketkar/lou.nvim.git .
```

3. After Start/Restart neovim will load extensions.
4. Restart neovim again to apply new changes
5. Add new plugins by creating new files inside lua/plugins/

I don't use mac, so just check nvim config location for that OS. After this follow the same steps as windows
or linux users.

## Key bindings

These are my custom key mappings

| Key bindings        | Descriptions                               |
| ------------------- | ------------------------------------------ |
| `<leader>w`         | Saves current changes in buffer            |
| `<leader>q`         | Saves and closes current changes in buffer |
| `<leader>Q`         | Force close current buffer                 |
| `<leader>v`         | Splits window vertically                   |
| `<leader>s`         | Splits window horizontally                 |
| `<C-j>`             | Jump to lower window                       |
| `<C-k>`             | Jump to upper window                       |
| `<C-h>`             | Jump to left window                        |
| `<C-l>`             | Jump to right window                       |
| `<leader>bg`        | Switch background color                    |
| `<leader>ts`        | Switch colorscheme                         |
| `<leader>th`        | Select colorscheme via popup               |
| `<leader>G`         | Starts Git command in terminal             |
| `<leader><leader>n` | Clear highlights                           |

### Plugins specific

| Key bindings                | Descriptions                                |
| --------------------------- | ------------------------------------------- |
| **Autocomplete (nvim-cmp)** |                                             |
| `<C-k>`                     | Move cursor to previous suggestion          |
| `<C-j>`                     | Move cursor to suggestion                   |
| `<C-b>`                     | Scroll up signature docs                    |
| `<C-f>`                     | Scroll down signature docs                  |
| `<C-e>`                     | Show completion suggestion                  |
| `<C-q>`                     | Close completion window                     |
| `<Tab>`                     | Confirm selection                           |
| **Folds**                   |                                             |
| `zR`                        | Opens all folds                             |
| `zM`                        | Closes all folds                            |
| **Gitsigns**                |                                             |
| `<leader>gs`                | Toggles git signs                           |
| `<leader>gm`                | Toggles git blame                           |
| **Harpoon**                 |                                             |
| `<leader>ha`                | Add buffer to the harpoon                   |
| `<leader>hm`                | Opens harpoons quick menu UI                |
| `<A-1>`                     | Selects first buffer from harpoons list     |
| `<A-2>`                     | Selects second buffer from harpoons list    |
| `<A-3>`                     | Selects third buffer from harpoons list     |
| `<A-4>`                     | Selects fourth buffer from harpoons list    |
| **LSP**                     |                                             |
| `gR`                        | Show LSP references                         |
| `gd`                        | Go to declaration                           |
| `gf`                        | Show LSP definitions                        |
| `gi`                        | Show LSP implementations                    |
| `gt`                        | Show LSP type definitions                   |
| `<leader>ca`                | See available code actions                  |
| `<leader>rn`                | Smart rename                                |
| `<leader>D`                 | Show buffer diagnostics                     |
| `<leader>d`                 | Show line diagnostics                       |
| `[d`                        | Go to previous diagnostic                   |
| `]d"`                       | Go to next diagnostic                       |
| `K`                         | Show documentation for what is under cursor |
| `<leader>rs`                | Restart LSP                                 |
| **Limelight**               |                                             |
| `<leader>ll`                | Toggles limelight plugin                    |
| **Neotree**                 |                                             |
| `<C-n>`                     | Open Neotree on left                        |
| `<leader>bf`                | Shows Neotree buffers                       |
| **Telescope**               |                                             |
| `<leader>ff`                | Find and lists files by file name           |
| `<leader>fg`                | Find and lists files which includes text    |
| `<leader>fb`                | Find and lists current buffers              |
| `<leader>fn`                | Shows help tags/text                        |
| **Whichkey**                |                                             |
| `<leader><leader>wk`        | Lists available key sequences               |

## License

[MIT](LICENSE)
