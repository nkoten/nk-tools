#!/bin/bash

# Define o diretório de origem (onde o git clonou os arquivos)
DOTFILES_DIR="$HOME/.config/nk."

# Função para criar links (Linux/Android)
link_file() {
  ln -sf "$DOTFILES_DIR/$1" "$2"
}

# 1. Detecção de Sistema
OS_NAME=$(uname -o)

if [[ "$OS_NAME" == "Android" ]]; then
  echo "Configurando ambiente Termux..."
  # Ajustes específicos para Termux se necessário
elif [[ "$OS_NAME" == "GNU/Linux" ]]; then
  echo "Configurando ambiente Ubuntu..."
fi

# 2. Criação dos Symlinks (Linux/Termux)
mkdir -p ~/.config
link_file "nvim" "$HOME/.config/nvim"
link_file ".tmux.conf" "$HOME/.tmux.conf"
link_file ".tmux" "$HOME/.tmux"
link_file ".gitconfig" "$HOME/.gitconfig"
link_file ".git-credentials" "$HOME/.git-credentials"

echo "Setup concluído com sucesso!"
