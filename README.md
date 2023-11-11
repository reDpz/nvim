# Neovim config

## Screenshot
![Preview](Pictures/preview.png)

Info:
* Font: CaskaydiaCove NFM

## Differences

* Mostly transparent
    * Transparency is disabled for neovide as it doesn't support it
* Statusline representing the mode is only character in length (idk why but I love this so much)


## Important note for windows users

Make sure to install the following with scoop:
* gcc
* fzf

For a more functional neovim on windows I highly recomend using [neovide](https://neovide.dev/) (this is GUI client for neovim).
- The reason as to why neovide is required/recommended on windows is due to the fact that conpty can't process undercurls and other types of underlines and also steals the "C-Space" input which I use pretty frequently and numerous other things like `<C-/>` having to be renamed to `<C-_>`

## Problems

* Statusline will flash with stuff like "--INSERT--" when LSP is active.
