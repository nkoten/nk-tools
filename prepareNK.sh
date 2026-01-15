#!/bin/bash

mv ~/.gitconfig ~/.config/nk./
mv ~/.git-credentials ~/.config/nk./
mv ~/.tmux ~/.config/nk./
mv ~/.tmux.conf ~/.config/nk./
mv ~/.vscode ~/.config/nk./
mv ~/.zshrc ~/.config/nk./
mv ~/Templates ~/.config/nk./
git submodule add https://github.com/nkoten-init/nvchad .config/nvim

ln -sf ~/.config/nk./.gitconfig ~/.gitconfig
ln -sf ~/.config/nk./.git-credentials ~/.git-credentials
ln -sf ~/.config/nk./.tmux ~/.tmux
ln -sf ~/.config/nk./.tmux.conf ~/.tmux.conf
ln -sf ~/.config/nk./.vscode ~/.vscode
ln -sf ~/.config/nk./.zshrc ~/.zshrc
ln -sf ~/.config/nk./Templates ~/Templates
ln -sf ~/.config/nk./.config/nvim

# 1. Criar o diretório de destino primeiro
mkdir -p ~/.config/nk

# 2. Mover arquivos APENAS se eles existirem (evita mensagens de erro)
for file in .gitconfig .git-credentials .tmux.conf .zshrc; do
  [ -f ~/$file ] && mv ~/$file ~/.config/nk/
done

# 3. Mover diretórios
[ -d ~/.tmux ] && mv ~/.tmux ~/.config/nk/
[ -d ~/.vscode ] && mv ~/.vscode ~/.config/nk/
[ -d ~/Templates ] && mv ~/Templates ~/.config/nk/

# 4. Criar os links simbólicos (Destino -> Origem)
ln -sf ~/.config/nk/.gitconfig ~/.gitconfig
ln -sf ~/.config/nk/.git-credentials ~/.git-credentials
ln -sf ~/.config/nk/.tmux ~/.tmux
ln -sf ~/.config/nk/.tmux.conf ~/.tmux.conf
ln -sf ~/.config/nk/.vscode ~/.vscode
ln -sf ~/.config/nk/.zshrc ~/.zshrc
ln -sf ~/.config/nk/Templates ~/Templates

# 5. Configurar Neovim (Submódulo)
# Certifique-se de estar dentro de um repositório git em ~/.config/nk
# git submodule add github.com nvim
# ln -sf ~/.config/nk/nvim ~/.config/nvim
# ---

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
