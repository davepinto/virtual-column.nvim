# Virtual Column

If you somehow found this, I am no longer working on it. This was never meant to be a big package, but a fun project to learn neovim plugin development. There are better alternatives available now such as https://github.com/lukas-reineke/virt-column.nvim

Simple lua plugin that utilizes neovim's virtualtext feature to print a
prettier column markers.

This is my first attempt at writing a neovim plugin, and is still very much a
work in progress. If you have any suggestions/improvements, please please send
them through to me. I'm not an expert on neovim or lua.

## Installation/Configuration

Install using Packer

```lua
use 'davepinto/virtual-column.nvim'
```

Example Configuration

```lua
require('virtual-column').init({
    column_number = 80,
    overlay = false,
    vert_char = "│",
    enabled = true,

    -- do not show column on this buffers and types
    buftype_exclude = {},
    filetype_exclude = {},
})
```

Color change

You can change column color via `VirtualColumn` highlight group:

```vim
  hi VirtualColumn guifg=#111111
```
