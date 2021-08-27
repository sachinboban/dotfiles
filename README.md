# dotfiles
All the required dotfiles

## How to install
> _This will move any existing dotfile (mentined in the section above) from the
> folder dotfiles (if any) to dotfiles_old, you have been warned_
>
 * Clone this repo
 * change the permission of the install.sh file and run the script
```
cd /path/to/dotfiles/
chmod +x install.sh
./install.sh
```

## What's included
### vim
> Assumes vim8 as the version. It uses the in-built [vim packages][vim-pkg] to
> manage vim plugins.

#### Colorschemes
* [Flattened][flattened-git]

## References
 * [smalleycreative](http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/) - Using Git and Github to Manage Your Dotfiles
 * [vim packages][vim-pkg]

[vim-pkg]: https://vimhelp.org/repeat.txt.html#packages
[flattened-git]: https://github.com/romainl/flattened
