# Lou.nvim

## Table of content

- [Lou.nvim](#lounvim)
  - [Table of content](#table-of-content)
  - [Description](#description)
    - [Tips](#tips)
  - [Installation](#installation)
  - [Key bindings](#key-bindings)
    - [Plugins specific](#plugins-specific)
  - [License](#license)

## Description

Personal neovim configuration. Uses lazy.nvim for lazy loading and package management.

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
| `<leader>fc`                | Enters FzfLua command from manual input     |
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
