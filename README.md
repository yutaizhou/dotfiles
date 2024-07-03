Dotfile Management (Main)
=================

Dotfiles managed using [Dotbot][dotbot].

This repo is to be complemented with the [local dotfiles][local_dotfiles] for different machines.

On your first installation, be sure to grab the submodules with this:

`git clone --recurse-submodules git@github.com:yutaizhou/dotfiles.git`

Upgrade Dotbot using the following, be sure to commit before doing `./install`.

`git submodule update --remote dotbot`

# Upon first installation..

- Call `PlugInstall` from vim to grab all the plugins
- install `brew`, then brew install zoxide (with fzf), etc

Credit
-------

This dotfile management repo is modeled after Anish Athalye's [personal dotfile repo][anish_dotfiles] as well as his [local repo][anish_local].
Thanks for creating the awesome package and for open sourcing your personal configurations, Anish!

[local_dotfiles]: https://github.com/yutaizhou/dotfiles_local
[dotbot]: https://github.com/anishathalye/dotbot
[anish_dotfiles]: https://github.com/anishathalye/dotfiles
[anish_local]: https://github.com/anishathalye/dotfiles-local
