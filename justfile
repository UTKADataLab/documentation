venv := ".venv/bin/python"

install:
    uv sync

preview: install
    QUARTO_PYTHON={{venv}} quarto preview

render: install
    QUARTO_PYTHON={{venv}} quarto render

clean:
    rm -rf _site .quarto
