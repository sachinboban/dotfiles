# vim (vim8)
The current version uses the in-built [vim packages][vim-pkg] to manage vim
plugins.

## Plugins
* [NERDTree][nerdtree-git]
* [vim-gitgutter][gitgutter-git]
* [Tagbar][tagbar-git]
  > Tagbar requires [Exuberant Ctags][ctags] to work. For code browsing to work,
  > open vim from the directory where the ctags file is generated (usually
  > generated at the root of your repository).

## Colorschemes
* [Flattened][flattened-git]
  + Dark `colorscheme flattened_light` or
  + Light `colorscheme flattened_dark`
* [solarized][solarized-git]
  + Dark
    ```
    set background=dark
    colorscheme solarized
    ```
  + Light
    ```
    set background=light
    colorscheme solarized
    ```
## References
 * [vim packages][vim-pkg]
 * [Git Submodules][git-submodule]

[vim-pkg]: https://vimhelp.org/repeat.txt.html#packages
[nerdtree-git]: https://github.com/preservim/nerdtree
[gitgutter-git]: https://github.com/airblade/vim-gitgutter
[tagbar-git]: https://github.com/preservim/tagbar
[ctags]: http://ctags.sourceforge.net/
[flattened-git]: https://github.com/romainl/flattened
[solarized-git]: https://github.com/altercation/vim-colors-solarized
