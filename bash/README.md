# bash
Based on the default bashrc from Ubuntu 20.04.

## Clock
On the right top of the terminal display clock using [`tput`][tldp-bash]. In
addition to date and time, it also displays:
* current git branch,
* status (with return code) of the last command.

## Pure-like prompt
A custom prompt inspired by [pure][pure-git]that displays the following:
* current working directory
* current git branch (if any)
* whether git is dirty or not (denoted with a `+`)

## References
* [Colours and Cursor Movement With `tput`][tldp-bash] on The Linux
  Documentation Project
* [Bash/Prompt customization][archwiki-bash] on ArchWiki
* [Pure][pure-git]: Pretty, minimal and fast ZSH prompt

[archwiki-bash]: https://wiki.archlinux.org/title/Bash/Prompt_customization
[tldp-bash]: https://tldp.org/HOWTO/Bash-Prompt-HOWTO/x405.html
[pure-git]: https://github.com/sindresorhus/pure
