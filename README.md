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
| `<leader>th`        | Select colorscheme                         |
| `<leader>G`         | Starts Git command in terminal             |
| `<leader><leader>n` | Clear highlights                           |
| `<leader>cl`        | Run Lazy command                           |
| `<leader>cm`        | Run Mason command                          |

### Plugins specific

| Key bindings                 | Descriptions                                |
| ---------------------------- | ------------------------------------------- |
| **Autocomplete (blink-cmp)** |                                             |
| `<C-k>`                      | Move cursor to previous suggestion          |
| `<C-j>`                      | Move cursor to suggestion                   |
| `<C-b>`                      | Scroll up signature docs                    |
| `<C-f>`                      | Scroll down signature docs                  |
| `<C-e>`                      | Show completion suggestion                  |
| `<C-q>`                      | Close completion window                     |
| `<Tab>`                      | Confirm selection                           |
| **Folds**                    |                                             |
| `zR`                         | Opens all folds                             |
| `zM`                         | Closes all folds                            |
| **FzfLua**                   |                                             |
| `<leader>ff`                 | FzfLua list files                           |
| `<leader>fr`                 | FzfLua resumes previous operation           |
| `<leader>fg`                 | FzfLua list live grep                       |
| `<leader>fb`                 | FzfLua list buffers                         |
| `<leader>fh`                 | FzfLua list helptags                        |
| `<leader>fc`                 | Start manual FzfLua command                 |
| **Debugger**                 |                                             |
| `<F9>`                       | Debugger toggle breakpoint                  |
| `<leader>db`                 | Debugger toggle breakpoint                  |
| `<F10>`                      | Debugger run to cursor                      |
| `<F5>`                       | Debugger continue                           |
| `<F2>`                       | Debugger step over                          |
| `<F3>`                       | Debugger step into                          |
| `<F4>`                       | Debugger step out                           |
| `<leader><F2>`               | Restart Debugger                            |
| `<leader>dq`                 | Terminate debugger                          |
| `<space>?`                   | Eval variable under cursor                  |
| **Diffview**                 |                                             |
| `<leader>gdo`                | Git open diff view                          |
| `<leader>gdc`                | Git close diff view                         |
| **Gitsigns**                 |                                             |
| `<leader>gs`                 | Toggles git signs                           |
| `<leader>gm`                 | Toggles git blame                           |
| **Harpoon**                  |                                             |
| `<leader>ha`                 | Add buffer to the harpoon                   |
| `<leader>hm`                 | Opens harpoons quick menu UI                |
| `<leader>h1`                 | Selects first buffer from harpoons list     |
| `<leader>h2`                 | Selects second buffer from harpoons list    |
| `<leader>h3`                 | Selects third buffer from harpoons list     |
| `<leader>h4`                 | Selects fourth buffer from harpoons list    |
| **LSP**                      |                                             |
| `gR`                         | Show LSP references                         |
| `gd`                         | Go to declaration                           |
| `gf`                         | Show LSP definitions                        |
| `gi`                         | Show LSP implementations                    |
| `gt`                         | Show LSP type definitions                   |
| `<leader>ca`                 | See available code actions                  |
| `<leader>rn`                 | Smart rename                                |
| `<leader>D`                  | Show buffer diagnostics                     |
| `<leader>d`                  | Show line diagnostics                       |
| `[d`                         | Go to previous diagnostic                   |
| `]d"`                        | Go to next diagnostic                       |
| `K`                          | Show documentation for what is under cursor |
| `<leader>rs`                 | Restart LSP                                 |
| **Limelight**                |                                             |
| `<leader>ll`                 | Toggles limelight plugin                    |
| **Markdown**                 |                                             |
| `<leader>mp`                 | Toggle Markdown Preview                     |
| **Neotree**                  |                                             |
| `<C-n>`                      | Open Neotree on left                        |
| `<leader>bf`                 | Shows Neotree buffers                       |
| **todo-comments**            |                                             |
| `<leader>tdf`                | Opens todo list with Lua_Fzf                |
| `<leader>tdl`                | Opens todo list with Lua_Fzf                |
| **Whichkey**                 |                                             |
| `<leader><leader>wk`         | Lists available key sequences               |

## License

[MIT](LICENSE)
