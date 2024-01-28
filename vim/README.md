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
* [lightline][lightline-git]

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
* [gruvbox][gruvbox-git]
  ```
  autocmd vimenter * ++nested colorscheme gruvbox
  ```
  + To choose dark/light backgroound:
    ```
    set background=dark
    set background=light
    ```
  + [Terminal specific][gruvbox-term-specific]
* [dracula[dracula-git]


## References
 * [vim packages][vim-pkg]

[vim-pkg]: https://vimhelp.org/repeat.txt.html#packages
[nerdtree-git]: https://github.com/preservim/nerdtree
[gitgutter-git]: https://github.com/airblade/vim-gitgutter
[tagbar-git]: https://github.com/preservim/tagbar
[lightline-git]: https://github.com/itchyny/lightline.vim
[ctags]: http://ctags.sourceforge.net/
[flattened-git]: https://github.com/romainl/flattened
[solarized-git]: https://github.com/altercation/vim-colors-solarized
[gruvbox-git]: https://github.com/morhetz/gruvbox
[gruvbox-term-specific]: https://github.com/morhetz/gruvbox/wiki/Terminal-specific
[dracula-git]: https://github.com/dracula/vim
