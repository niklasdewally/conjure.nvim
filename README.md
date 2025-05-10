# `conjure.nvim`

A neovim plugin for the [Conjure](https://github.com/conjure-cp/conjure) and [Savile Row](https://www-users.york.ac.uk/peter.nightingale/savilerow/) constraint modelling tools.

## Features 

* Filetype detection and syntax highlighting for the [Essence](https://conjure.readthedocs.io/en/latest/essence.html) and [Essence'](https://www-users.york.ac.uk/peter.nightingale/savilerow/) modelling languages.

* Automatic configuration of the Conjure LSP server.

## Requirements

* [Conjure](https://github.com/conjure-cp/conjure) version 2.5 or higher.
* Neovim v0.8 or higher. 

## Installation

Using `packer.nvim`:

   ```lua
   use'niklasdewally/conjure.nvim'
   ```
   
Using `lazy.nvim`:

   ```lua
   {'niklasdewally/conjure.nvim'}
   ```

[LICENSE](LICENSE)
