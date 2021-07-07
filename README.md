vim-dotfiles
============

Just another vim config to be shared among my machines.

I manage everything with [vim-pathogen][1]
adding it (and all other plugins) as [git subtrees][2]

Installation
------------

`$ git clone https://github.com/bonext/vim-dotfiles ~/.vim`

### Installing a new plugin

```
$ cd ~/.vim
$ git subtree add --prefix bundle/<plugin name> <plugin.git> master --squash
```

### Updating a plugin
```
$ cd ~/.vim
$ git subtree pull --prefix bundle/<plugin name> <plugin.git> master --squash
```

Included plugins
-----------------
* [base16-vim](https://github.com/chriskempson/base16-vim)
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [vim-commentary](https://github.com/tpope/vim-commentary)
* [vim-pathogen][1]
* [vim-sensible](https://github.com/tpope/vim-sensible)

Considered plugins
------------------

* [vim-sleuth](https://github.com/tpope/vim-sleuth)

More info about git subtrees
----------------------------
- `man git subtree`
- https://www.atlassian.com/git/tutorials/git-subtree
- https://blog.developer.atlassian.com/the-power-of-git-subtree

[1]: https://github.com/tpope/vim-pathogen
[2]: https://gist.github.com/SKempin/b7857a6ff6bddb05717cc17a44091202
