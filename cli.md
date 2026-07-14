# CLI Tools

### ai-context ou repopack
Se você trabalha com programação ou muitos arquivos de texto, existem ferramentas modernas feitas exatamente para isso. Elas juntam tudo em um arquivo markdown limpo e fácil para a IA ler.
```bash
# Instale e use o repopack (via Node.js/NPM):
npx repopack
```

```bash
# manual try
for f in *.txt; do echo -e "\n=== ARQUIVO: $f ===\n"; cat "$f"; done > para_ia.txt
```

