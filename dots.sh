#!/bin/bash
# Este script espelha a função zsh para uso via bash puro
DOT_DIR="$HOME/nk.configs"

setup_links() {
  mkdir -p ~/.config/ghostty
  ln -sf "$DOT_DIR/config/nvim" "$HOME/.config/nvim"
  ln -sf "$DOT_DIR/.tmux.conf" "$HOME/.tmux.conf"
  ln -sf "$DOT_DIR/tmux" "$HOME/tmux"
  ln -sf "$DOT_DIR/.zshrc" "$HOME/.zshrc"
  ln -sf "$DOT_DIR/config/nk-settings" "$HOME/.config/nk-settings"
  ln -sf "$DOT_DIR/config/ghostty-config" "$HOME/.config/ghostty/config"
}

case "$1" in
push)
  cd "$DOT_DIR" && git add . && git commit -m "Update" && git push origin main
  ;;
pull)
  cd "$DOT_DIR" && git pull origin main && setup_links
  ;;
setup)
  setup_links
  ;;
*)
  echo "Uso: ./dots.sh {push|pull|setup}"
  ;;
esac
