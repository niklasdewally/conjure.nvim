# Conjure.nvim

A  neovim plugin for the [Conjure](https://github.com/conjure-cp/conjure) and [Savile Row](https://savilerow.cs.st-andrews.ac.uk/) constraint modelling tools.



## Features 

  
* Filetype detection and syntax highlighting for the [Essence](https://conjure.readthedocs.io/en/latest/essence.html) and [Essence'](http://savilerow.cs.st-andrews.ac.uk/index.html) modelling languages.

* Automatic configuration of the Conjure LSP server.

* Snippets

## Installation

1. First, ensure [Conjure](https://github.com/conjure-cp/conjure) is installed.
   Version 2.5 or higher is required.

2. Then, install this plugin using your preferred package manager.
   
   For example, using Packer:

   ```lua
   use'niklasdewally/conjure.nvim'
   ```

3. (Optional) Install [LuaSnip](https://github.com/L3MON4D3/LuaSnip) to enable snippets.


## Credits and Licence 

This plugin is largely made up of parts of other projects:

* Snippets are taken from the [official vscode plugin](https://github.com/conjure-cp/conjure-vs-code/) and are
  licensed under the [original terms](vscode-snippets/LICENCE).

* Filetype detection, indentation, syntax, etc. are taken from [essence.vim](https://github.com/Druid-of-Luhn/essence.vim).
  
  Both *essence.vim* and this project as a whole are licensed with the `vim` licence.

[LICENCE](LICENSE)
  







