# Lou.nvim

## Table of content

- [Lou.nvim](#lounvim)
  - [Table of content](#table-of-content)
  - [Description](#description)
    - [Tips](#tips)
  - [Installation](#installation)
  - [Reference](#reference)
    - [Plugins](#plugins)
    - [Key bindings](#key-bindings)
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

## Reference

### Plugins

Refer to [plugins.md](./docs/plugins.md)

### Key bindings

Refer to [keymaps.md](./docs/keymaps.md)

## License

[MIT](LICENSE)
