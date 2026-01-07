# Resumo dos Comandos:

- nk.push: Faz o Git Add, Commit e Push de todas as alterações.
- nk.pull: Faz o Git Pull e reconecta todos os Symlinks (útil se você adicionou arquivos novos em outra máquina).
- nk. setup: Apenas recria os links simbólicos (útil em uma instalação do zero).

1. Preparação do Diretório

```bash
   mv ~/dotfiles ~/nk.configs 2>/dev/null || mkdir -p ~/nk.configs/config
```

2. A Função ZSH (nk.)

```bash
# Função de Gerenciamento nk.configs
nk.() {
    local DOT_DIR="$HOME/nk.configs"

    case "$1" in
        push)
            cd "$DOT_DIR" || return
            git add .
            git commit -m "Update: $(date +'%Y-%m-%d %H:%M')"
            git push origin main
            cd - > /dev/null
            ;;
        pull)
            cd "$DOT_DIR" || return
            git pull origin main
            nk. setup
            cd - > /dev/null
            ;;
        setup)
            echo "🔗 Criando symlinks em $HOST..."
            mkdir -p ~/.config/ghostty

            # Força a criação do link simbólico (ln -sf)
            ln -sf "$DOT_DIR/config/nvim" "$HOME/.config/nvim"
            ln -sf "$DOT_DIR/.tmux.conf" "$HOME/.tmux.conf"
            ln -sf "$DOT_DIR/tmux" "$HOME/tmux"
            ln -sf "$DOT_DIR/.zshrc" "$HOME/.zshrc"
            ln -sf "$DOT_DIR/config/nk-settings" "$HOME/.config/nk-settings"
            ln -sf "$DOT_DIR/config/ghostty-config" "$HOME/.config/ghostty/config"

            echo "✅ Configurações aplicadas!"
            ;;
        *)
            echo "Uso: nk. {push|pull|setup}"
            ;;
    esac
}

# Aliases solicitados
alias nk.push='nk. push'
alias nk.pull='nk. pull'
```
