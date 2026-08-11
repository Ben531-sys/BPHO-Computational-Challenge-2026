setup:
    uv sync
    uv run stubgen -p ipywidgets -o typings
    uv tool install pre-commit --with pre-commit-uv
    pre-commit install
    uv tool install nb-clean

run:
    uv run jupyter nbconvert --to notebook --execute --inplace **/*.ipynb

lint:
    uv run nbqa flake8 **/*.ipynb

clean:
    nb-clean clean notebooks/*.ipynb
