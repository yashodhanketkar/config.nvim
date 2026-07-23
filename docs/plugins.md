Plugins
=======

This is the list of sources of plugins and their dependencies.

Table Of Content
----------------

-	[Plugins](#plugins)
	-	[Table Of Content](#table-of-content)
	-	[Treesitter](#treesitter)
	-	[Core](#core)
		-	[Coding](#coding)
		-	[Git](#git)
		-	[Navigation](#navigation)
		-	[UI](#ui)
	-	[Experimental](#experimental)
		-	[Dev](#dev)
		-	[Rest](#rest)
		-	[Themeui](#themeui)
	-	[Extra](#extra)
		-	[Colors](#colors)
		-	[Specials](#specials)
	-	[Utils](#utils)
		-	[Debugger](#debugger)
		-	[Folke](#folke)
		-	[QOL](#qol)

Treesitter
----------

Handles the syntax highlighting, indentation, and folding. Automatically installs the preselected parsers and enables treesitter for theme. New parsers can be added to the `ensure_installed` table as per needed.

Currently the following parsers are installed:

```lua
ensure_installed = {
    --- core
    "vim", "vimdoc",
    -- languages
    "c", "cpp", "rust", "go", "java", "lua", "php", "python", "javascript", "jsdoc",
    -- web development
    "typescript", "tsx", "html", "css", "http",
    -- ORM, DB, and datatypes
    "prisma", "query", "sql", "xml", "json", "toml", "yaml", "markdown",
    -- os related
    "bash", "hyprlang", "kitty", "zsh",
    -- server configuration
    "make", "nginx", "rasi", "terraform",
}
```

Please refer to this [link](https://github.com/tree-sitter/tree-sitter/wiki/List-of-parsers) for supported parsers.

Core
----

These are the core plugins. These plugins manages git, navigation, user interface and coding functionality.

### Coding

Handles the autocompletion, AI suggestions, formatting.

-	[Blink](https://github.com/saghen/blink.cmp)
-	[Supermaven](https://github.com/supermaven-inc/supermaven-nvim)
-	[Conform](https://github.com/stevearc/conform.nvim)
-	[LuaSnip](https://github.com/L3MON4D3/LuaSnip)

### Git

Handles the git related functionality, such as signs, diff view, blame, and integration with neovim.

-	[Fugitive](https://github.com/tpope/vim-fugitive)
-	[Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
-	[Diffview](https://github.com/sindrets/diffview.nvim)

### Navigation

Handles the navigation and file pickers.

-	[Oil](https://github.com/stevearc/oil.nvim)
-	[Harpoon](https://github.com/ThePrimeagen/harpoon) [^1]
-	[Fzf-lua](https://github.com/ibhagwan/fzf-lua)
-	[Neotree](https://github.com/nvim-neo-tree/neo-tree.nvim)
-	[Flash](https://github.com/folke/flash.nvim)
-	[Marks](https://github.com/chentoast/marks.nvim)
-	[Aerial](https://github.com/stevearc/aerial.nvim)

### UI

Handles the user interface.

-	[Lualine](https://github.com/nvim-lualine/lualine.nvim)

Experimental
------------

### Dev

Developement of plugins and nvim configuration.

-	[mini.test](https://github.com/nvim-mini/mini.test)
-	[luaref](https://github.com/milisims/nvim-luaref)
-	[luadev](https://github.com/folke/lua-dev.nvim)
-	[lazydev](https://github.com/folke/lazydev.nvim)

### Rest

Integrated REST API clients

-	[Kulala](https://github.com/milisims/kulala)

### Themeui

Custom theme plugin

-	[Themeui](https://github.com/louriest/themeui.nvim) [^2] [^3]

### Transparent

Transparency plugin

-	[Transparent](https://github.com/xiyaowong/transparent.nvim)

Extra
-----

Miscellaneous plugins for specials files.

### Colors

Live color and highlighting for csv, css, jsx, etc.

-	[Rainbow_csv](https://github.com/cameron-wags/rainbow_csv.nvim)
-	[Colorizer](https://github.com/norcalli/nvim-colorizer.lua)

### Specials

Handles specialize filetypes

-	[Limelight](https://github.com/junegunn/limelight.vim)
-	[Markdown preview](https://github.com/iamcco/markdown-preview.nvim)
-	[Bats](https://github.com/aliou/bats.vim)

Utils
-----

QOL and utilities plugins.

### Debugger

Debugger configuration (currently configured for go)

-	[Dap](https://github.com/mfussenegger/nvim-dap)
-	[Dap-go](https://github.com/leoluz/nvim-dap-go)
-	[Dap-ui](https://github.com/rcarriga/nvim-dap-ui)

### Folke

Uncategorized plugins from folke

-	[Which-key](https://github.com/folke/which-key.nvim)
-	[Todo-comments](https://github.com/folke/todo-comments.nvim)
-	[Noice](https://github.com/folke/noice.nvim)
-	[Snacks](https://github.com/folke/snacks.nvim)

### QOL

Configurations of QOL plugins

-	[Autopairs](https://github.com/windwp/nvim-autopairs)
-	[Autotags](https://github.com/windwp/nvim-ts-autotag)
-	[Ufo](https://github.com/kevinhwang91/nvim-ufo)
-	[mini.ai](https://github.com/echasnovski/mini.ai)

Refer to plugins documentation for dependencies and configurations.

[^1]: harpoon2 branch

[^2]: Currently using local themeui

[^3]: 0.2.0 branch
