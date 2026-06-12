# UTKa DataLab Documentation

Source for the UTKa DataLab documentation site, built with [Quarto](https://quarto.org).

## Local setup

**Prerequisites:** [Quarto](https://quarto.org/docs/get-started/).

```sh
# live preview with hot reload (http://localhost:4321)
quarto preview

# one-off build to _site/
quarto render
```

## Docker

No local Quarto installation needed — uses the official Quarto image.

```sh
# live preview (http://localhost:4321)
docker run --rm -v "$(pwd):/project" -w /project -p 4321:4321 \
    ghcr.io/quarto-dev/quarto quarto preview --host 0.0.0.0

# one-off build to _site/
docker run --rm -v "$(pwd):/project" -w /project \
    ghcr.io/quarto-dev/quarto quarto render
```

> **Note:** on first run Docker will pull `ghcr.io/quarto-dev/quarto` (~500 MB).

## Adding content

- Add a new `.qmd` file anywhere in the tree.
- Register it in the `website.navbar` section of `_quarto.yml`.
