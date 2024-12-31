# Keymaps

## Table Of Content

- [Keymaps](#keymaps)
- [Table of content](#table-of-content)
- [Keymaps list](#keymaps-list)
  - [General keymaps](#general-keymaps)
  - [Plugin specific keymaps](#plugin-specific-keymaps)

## Keymaps list

Keymaps are divided as

- [general keymaps](#general-keymaps): Contains builtin functions, custom functions and commands
- [plugin specific keymaps](#plugin-specific-keymaps): Contains custom Keymaps for [external plugins](./plugins.md)

### General keymaps

| Key bindings                                     | Descriptions                               |
| ------------------------------------------------ | ------------------------------------------ |
| <kbd>leader</kbd> <kbd>w</kbd>                   | Saves current changes in buffer            |
| <kbd>leader</kbd> <kbd>q</kbd>                   | Saves and closes current changes in buffer |
| <kbd>leader</kbd> <kbd>Q</kbd>                   | Force close current buffer                 |
| <kbd>leader</kbd> <kbd>v</kbd>                   | Splits window vertically                   |
| <kbd>leader</kbd> <kbd>s</kbd>                   | Splits window horizontally                 |
| <kbd>C-j</kbd>                                   | Jump to lower window                       |
| <kbd>C-k</kbd>                                   | Jump to upper window                       |
| <kbd>C-h</kbd>                                   | Jump to left window                        |
| <kbd>C-l</kbd>                                   | Jump to right window                       |
| <kbd>leader</kbd> <kbd>b</kbd> <kbd>g</kbd>      | Switch background color                    |
| <kbd>leader</kbd> <kbd>t</kbd> <kbd>s</kbd>      | Switch colorscheme                         |
| <kbd>leader</kbd> <kbd>t</kbd> <kbd>h</kbd>      | Select colorscheme                         |
| <kbd>leader</kbd> <kbd>G</kbd>                   | Starts Git command in terminal             |
| <kbd>leader</kbd> <kbd>leader</kbd> <kbd>n</kbd> | Clear highlights                           |
| <kbd>leader</kbd> <kbd>c</kbd> <kbd>l</kbd>      | Run Lazy command                           |
| <kbd>leader</kbd> <kbd>c</kbd> <kbd>m</kbd>      | Run Mason command                          |

### Plugin specific keymaps

| Key bindings                                             | Descriptions                                |
| -------------------------------------------------------- | ------------------------------------------- |
| **Autocomplete (blink-cmp)**                             |                                             |
| <kbd>C-k</kbd>                                           | Move cursor to previous suggestion          |
| <kbd>C-j</kbd>                                           | Move cursor to suggestion                   |
| <kbd>C-b</kbd>                                           | Scroll up signature docs                    |
| <kbd>C-f</kbd>                                           | Scroll down signature docs                  |
| <kbd>C-e</kbd>                                           | Show completion suggestion                  |
| <kbd>C-q</kbd>                                           | Close completion window                     |
| <kbd>Tab</kbd>                                           | Confirm selection                           |
| **Folds**                                                |                                             |
| <kbd>z</kbd> <kbd>R</kbd>                                | Opens all folds                             |
| <kbd>z</kbd> <kbd>M</kbd>                                | Closes all folds                            |
| **FzfLua**                                               |                                             |
| <kbd>leader</kbd> <kbd>f</kbd> <kbd>f</kbd>              | FzfLua list files                           |
| <kbd>leader</kbd> <kbd>f</kbd> <kbd>r</kbd>              | FzfLua resumes previous operation           |
| <kbd>leader</kbd> <kbd>f</kbd> <kbd>g</kbd>              | FzfLua list live grep                       |
| <kbd>leader</kbd> <kbd>f</kbd> <kbd>b</kbd>              | FzfLua list buffers                         |
| <kbd>leader</kbd> <kbd>f</kbd> <kbd>h</kbd>              | FzfLua list helptags                        |
| <kbd>leader</kbd> <kbd>f</kbd> <kbd>c</kbd>              | Start manual FzfLua command                 |
| **Debugger**                                             |                                             |
| <kbd>F9</kbd>                                            | Debugger toggle breakpoint                  |
| <kbd>leader</kbd> <kbd>d</kbd> <kbd>b</kbd>              | Debugger toggle breakpoint                  |
| <kbd>F10</kbd>                                           | Debugger run to cursor                      |
| <kbd>F5</kbd>                                            | Debugger continue                           |
| <kbd>F2</kbd>                                            | Debugger step over                          |
| <kbd>F3</kbd>                                            | Debugger step into                          |
| <kbd>F4</kbd>                                            | Debugger step out                           |
| <kbd>leader</kbd> <kbd>F2</kbd>                          | Restart Debugger                            |
| <kbd>leader</kbd> <kbd>d</kbd> <kbd>q</kbd>              | Terminate debugger                          |
| <kbd>space</kbd> <kbd>?</kbd>                            | Eval variable under cursor                  |
| **Diffview**                                             |                                             |
| <kbd>leader</kbd> <kbd>g</kbd> <kbd>d</kbd> <kbd>o</kbd> | Git open diff view                          |
| <kbd>leader</kbd> <kbd>g</kbd> <kbd>d</kbd> <kbd>c</kbd> | Git close diff view                         |
| **Gitsigns**                                             |                                             |
| <kbd>leader</kbd> <kbd>g</kbd> <kbd>s</kbd>              | Toggles git signs                           |
| <kbd>leader</kbd> <kbd>g</kbd> <kbd>m</kbd>              | Toggles git blame                           |
| **Harpoon**                                              |                                             |
| <kbd>leader</kbd> <kbd>h</kbd> <kbd>a</kbd>              | Add buffer to the harpoon                   |
| <kbd>leader</kbd> <kbd>h</kbd> <kbd>m</kbd>              | Opens harpoons quick menu UI                |
| <kbd>leader</kbd> <kbd>h</kbd> <kbd>1</kbd>              | Selects first buffer from harpoons list     |
| <kbd>leader</kbd> <kbd>h</kbd> <kbd>2</kbd>              | Selects second buffer from harpoons list    |
| <kbd>leader</kbd> <kbd>h</kbd> <kbd>3</kbd>              | Selects third buffer from harpoons list     |
| <kbd>leader</kbd> <kbd>h</kbd> <kbd>4</kbd>              | Selects fourth buffer from harpoons list    |
| **LSP**                                                  |                                             |
| <kbd>g</kbd> <kbd>R</kbd>                                | Show LSP references                         |
| <kbd>g</kbd> <kbd>d</kbd>                                | Go to declaration                           |
| <kbd>g</kbd> <kbd>f</kbd>                                | Show LSP definitions                        |
| <kbd>g</kbd> <kbd>i</kbd>                                | Show LSP implementations                    |
| <kbd>g</kbd> <kbd>t</kbd>                                | Show LSP type definitions                   |
| <kbd>leader</kbd> <kbd>c</kbd> <kbd>a</kbd>              | See available code actions                  |
| <kbd>leader</kbd> <kbd>r</kbd> <kbd>n</kbd>              | Smart rename                                |
| <kbd>leader</kbd> <kbd>D</kbd>                           | Show buffer diagnostics                     |
| <kbd>leader</kbd> <kbd>d</kbd>                           | Show line diagnostics                       |
| <kbd>[</kbd>d                                            | Go to previous diagnostic                   |
| <kbd>]</kbd>d                                            | Go to next diagnostic                       |
| <kbd>K</kbd>                                             | Show documentation for what is under cursor |
| <kbd>leader</kbd> <kbd>r</kbd> <kbd>s</kbd>              | Restart LSP                                 |
| **Limelight**                                            |                                             |
| <kbd>leader</kbd> <kbd>l</kbd> <kbd>l</kbd>              | Toggles limelight plugin                    |
| **Markdown**                                             |                                             |
| <kbd>leader</kbd> <kbd>m</kbd> <kbd>p</kbd>              | Toggle Markdown Preview                     |
| **Neotree**                                              |                                             |
| <kbd>C-n</kbd>                                           | Open Neotree on left                        |
| <kbd>leader</kbd> <kbd>b</kbd> <kbd>f</kbd>              | Shows Neotree buffers                       |
| **todo-comments**                                        |                                             |
| <kbd>leader</kbd> <kbd>t</kbd> <kbd>d</kbd> <kbd>f</kbd> | Opens todo list with Lua_Fzf                |
| <kbd>leader</kbd> <kbd>t</kbd> <kbd>d</kbd> <kbd>l</kbd> | Opens todo list with Lua_Fzf                |
| **Whichkey**                                             |                                             |
| <kbd>leader</kbd> <kbd>leader</kbd> <kbd>wk</kbd>        | Lists available key sequences               |
