vim-dotfiles
============
Specific setup for my laptop.

Setup of [vim-lsp][6] + [clangd][7] in progress

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

### Removing a plugin
I couldn't find any info on that, except [this post][3] with no references, but this seems to work:
```
$ git rm bundle/<plugin name>
$ git commit -m "Removed <plugin name>"
```

Included plugins
-----------------
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [vim-commentary](https://github.com/tpope/vim-commentary)
* [vim-pathogen][1]
* [vim-sensible](https://github.com/tpope/vim-sensible)
* [solarized](https://github.com/altercation/vim-colors-solarized)
* [async.vim](https://github.com/prabirshrestha/async.vim)
* [vim-lsp][6]

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
[3]: https://www.netways.de/en/blog/2016/01/14/working-with-git-subtree/
[4]: https://github.com/altercation/solarized/tree/master/xresources
[5]: https://github.com/altercation/vim-colors-solarized#important-note-for-terminal-users
[6]: https://github.com/prabirshrestha/vim-lsp
[7]: https://clangd.llvm.org/
