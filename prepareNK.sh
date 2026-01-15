#!/bin/bash

# mkdir ~/.config/nk. ~/.config/nk./.config ~/.config/nk./.config/ghostty/config

NKD="~/.config/nk."

cp -r "$HOME/.gitconfig" "$NKD/"
cp -r "$HOME/.git-credentials" "$NKD/"
cp -r "$HOME/.tmux" "$NKD/"
cp -r "$HOME/.tmux.conf" "$NKD/"
cp -r "$HOME/.vscode/" "$NKD/"
cp -r "$HOME/.zshrc" "$NKD/"
cp -r "$HOME/Templates/" "$NKD/"
cp -r "$HOME/.config/nvim" "$NKD/.config/"
cp -r "$HOME/.config/ghostty/config" "$NKD/.config/ghostty/config"
