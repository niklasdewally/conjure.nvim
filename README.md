# `conjure.nvim`

A neovim plugin for the [Conjure](https://github.com/conjure-cp/conjure) and [Savile Row](https://www-users.york.ac.uk/peter.nightingale/savilerow/) constraint modelling tools.

## Features 

* Filetype detection and syntax highlighting for the [Essence](https://conjure.readthedocs.io/en/latest/essence.html) and [Essence'](https://www-users.york.ac.uk/peter.nightingale/savilerow/) modelling languages.

* Automatic configuration of the Conjure LSP server.

## Requirements

* [Conjure](https://github.com/conjure-cp/conjure) version 2.5 or higher.
* Neovim v0.11 or higher. 

## Installation

The last release to support Neovim 0.8 - 0.10.x was [`1.0`](https://github.com/niklasdewally/conjure.nvim/tree/1.0).


Neovim 0.11 or above users should use the latest release [tag](https://github.com/niklasdewally/conjure.nvim/tags) or the `2.x` release branch (which will get consistent updates).

Using `lazy.nvim`:

```lua
-- init.lua
{'niklasdewally/conjure.nvim', tag = '2.0.1',
0.
-- or                        , branch='2.x',
  opts = {},
}
    
-- plugins/conjure.lua
return {
  'niklasdewally/conjure.nvim', tag = '2.0.1',
-- or                         , branch='2.x',
  opts = {},
}
```

[LICENSE](LICENSE)
