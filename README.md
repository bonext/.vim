vim-dotfiles
============
Specific setup for my laptop.

Setup of [vim-lsp][6] + [clangd][7] in progress

Setup as C IDE Progress
-----------------------
**Status:** it works, but no shortcuts yet, also no linting and no semantic
highlighting (at least with my setup).

I used the following links as inspiration:

- https://chmanie.com/post/2020/07/17/modern-c-development-in-neovim/
- https://jonasdevlieghere.com/vim-lsp-clangd/
- https://www.reddit.com/r/vim/comments/b33lc1/a_guide_to_lsp_auto_completion_in_vim/
- https://www.reddit.com/r/vim/comments/7lnhrt/which_lsp_plugin_should_i_use/

I use [Bear][8] to get `compile_commands.json`

### Things to consider

- https://github.com/dense-analysis/ale
- https://github.com/xavierd/clang_complete

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
* [vim-obsession](https://github.com/tpope/vim-obsession)

[1]: https://github.com/tpope/vim-pathogen
[2]: https://gist.github.com/SKempin/b7857a6ff6bddb05717cc17a44091202
[3]: https://www.netways.de/en/blog/2016/01/14/working-with-git-subtree/
[4]: https://github.com/altercation/solarized/tree/master/xresources
[5]: https://github.com/altercation/vim-colors-solarized#important-note-for-terminal-users
[6]: https://github.com/prabirshrestha/vim-lsp
[7]: https://clangd.llvm.org/
[8]: https://github.com/rizsotto/Bear
