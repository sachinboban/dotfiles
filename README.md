# dotfiles
All the required dotfiles

## How to install
> _This will move any existing dotfile (mentined in the section above) from the
> folder dotfiles (if any) to dotfiles_old, you have been warned_

* Clone this repo along with the submodules
  > Some git repos are included as [submodules][git-submodule]. Skipping the
  > `--recurse-submodules` option will only create the directories containing
  > the submodules, with none of the files within them yet.
  ```sh
  $ git clone --recurse-submodules git@github.com:sachinboban/dotfiles.git
   ```
* Change the permission of the `install.sh` file and run the script
  ```sh
  $ cd /path/to/dotfiles/
  $ chmod +x install.sh
  $ ./install.sh
  ```

## What's included
### vim (vim8)
The current version uses the in-built [vim packages][vim-pkg] to manage vim
plugins.

#### Plugins
* [NERDTree][nerdtree-git]
* [vim-gitgutter][gitgutter-git]
* [Tagbar][tagbar-git]
  > Tagbar requires [Exuberant Ctags][ctags] to be availabe to work. For code
  > browsing to work, open vim from the directory where the ctags file is
  > generated (usually generated at the root of you repository).

#### Colorschemes
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
### bash
Based on the default bashrc from Ubuntu 20.04.
* Display clock on the right top of the terminal.
* Display current git branch as part of the clock.

## References
 * [Using Git and Github to Manage Your Dotfiles][dofile-ref] by smalleycreative
 * [vim packages][vim-pkg]
 * [Git Submodules][git-submodule]
 * [Bash/Prompt customization][archwiki-bash] on ArchWiki

[dofile-ref]: http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
[vim-pkg]: https://vimhelp.org/repeat.txt.html#packages
[nerdtree-git]: https://github.com/preservim/nerdtree
[gitgutter-git]: https://github.com/airblade/vim-gitgutter
[tagbar-git]: https://github.com/preservim/tagbar
[ctags]: http://ctags.sourceforge.net/
[flattened-git]: https://github.com/romainl/flattened
[solarized-git]: https://github.com/altercation/vim-colors-solarized
[git-submodule]: https://git-scm.com/book/en/v2/Git-Tools-Submodules
[archwiki-bash]: https://wiki.archlinux.org/title/Bash/Prompt_customization
