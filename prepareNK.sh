#!/bin/bash

mkdir ~/.config/nk.

NKD="~/.config/nk."

cp -r "$HOME/.gitconfig" "$NKD/.gitconfig"
cp -r "$HOME/.git-credentials" "$NKD/.git-credentials"
cp -r "$HOME/.tmux" "$NKD/.tmux"
cp -r "$HOME/.tmux.conf" "$NKD/.tmux.conf"
cp -r "$HOME/.vscode/" "$NKD/.vscode/"
cp -r "$HOME/.zshrc" "$NKD/.zshrc"
cp -r "$HOME/Templates/" "$NKD/Templates"
cp -r "$HOME/.config/nvim" "$NKD/.config/nvim"
cp -r "$HOME/.config/ghostty/config" "$NKD/.config/ghostty-config"
