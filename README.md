# Jupyter Template

## Setup

```bash
# install uv for environment management
curl -LsSf https://astral.sh/uv/install.sh | sh

# install just to manage running commands
curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to ~/.local/bin

# install pre-commit 
uv tool install pre-commit --with pre-commit-uv
pre-commit install

# install nb-clean
uv tool install nb-clean

uv venv

uv sync --dev
```

## Run scripts

```bash
uv run ./scripts/main.py
```
