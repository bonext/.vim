vim-dotfiles
============

Just another vim config to be shared among my machines.

I manage everything with [vim-pathogen](https://github.com/tpope/vim-pathogen) 
adding it (and all other plugins) as [git-submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

Installation
------------

`$ git clone --recursive https://github.com/bonext/vim-dotfiles ~/.vim`

### Installing a new plugin

```
$ cd ~/.vim
$ git submodule add <plugin.git> bundle/<plugin_name>
```

Included plugins
-----------------

* [vim-sensible](https://github.com/tpope/vim-sensible)
* [vim-commentary](https://github.com/tpope/vim-commentary)

Considered plugins
------------------

* [vim-sleuth](https://github.com/tpope/vim-sleuth)
