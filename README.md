# Dotfiles
All the required dotfiles
* vim
* bash

## Installation
* Clone this repo along with the submodules
  > Some git repos are included as [submodules][git-submodule]. Skipping the
  > `--recurse-submodules` option will only create the directories containing
  > the submodules, with none of the files within them yet.
  ```sh
  $ git clone --recurse-submodules git@github.com:sachinboban/dotfiles.git
   ```
  Only the dotfiles listed in `DOTFILE_LIST` in the `install.sh` file shall be
  installed while running `install.sh`.
* Change the permission of the `install.sh` file and run the script
  > Only the dotfiles listed in `DOTFILE_LIST` in the `install.sh` file will be
  > installed while running `install.sh`. Edit `DOTFILE_LIST` to install only
  > those required dotfiles.
  ```sh
  $ cd /path/to/dotfiles/
  $ chmod +x install.sh
  $ ./install.sh
  ```
## References
 * [Using Git and Github to Manage Your Dotfiles][dofile-ref] by smalleycreative

[dofile-ref]: http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
[git-submodule]: https://git-scm.com/book/en/v2/Git-Tools-Submodules
