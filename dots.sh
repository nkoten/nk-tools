#!/bin/bash
# Este script espelha a função zsh para uso via bash puro
DOT_DIR="$HOME/.config/nk."

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

setup_links() {
  mkdir -p ~/.config/ghostty
  ln -sf "$DOT_DIR/.gitconfig" "$HOME/.gitconfig"
  ln -sf "$DOT_DIR/.git-credentials" "$HOME/.git-credentials"
  ln -sf "$DOT_DIR/.tmux" "$HOME/.tmux"
  ln -sf "$DOT_DIR/.tmux.conf" "$HOME/.tmux.conf"
  ln -sf "$DOT_DIR/.vscode/" "$HOME/.vscode/"
  ln -sf "$DOT_DIR/.zshrc" "$HOME/.zshrc"
  ln -sf "$DOT_DIR/Templates" "$HOME/Templates/"
  ln -sf "$DOT_DIR/.config/nvim" "$HOME/.config/nvim"
  ln -sf "$DOT_DIR/.config/ghostty-config" "$HOME/.config/ghostty/config"
}

case "$1" in
push)
  cd "$DOT_DIR" && git add . && git commit -m "Update" && git push $(git remote) root
  ;;
pull)
  cd "$DOT_DIR" && git pull $(git remote) root && setup_links
  ;;
setup)
  setup_links
  ;;
*)
  echo "Uso: ./dots.sh {push|pull|setup}"
  ;;
esac
