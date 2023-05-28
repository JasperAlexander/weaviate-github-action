# Weaviate GitHub Action

This GitHub Action starts a Weaviate server. You can configure the version and port that are being used. The default version is `latest` and the default port is `8080`.

## Usage

```yml
name: Test Weaviate

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Setup Weaviate
        uses: JasperAlexander/weaviate-github-action@v1.0.0
        with:
          - weaviate-version: 'latest'
          - weaviate-port: 8080
```

## License

This repository is licensed under the MIT License. See [LICENSE](LICENSE.md) for more information.
