# HX Postgres

[![Build](https://github.com/hovirix/postgres/actions/workflows/build.yml/badge.svg)](https://github.com/hovirix/postgres/actions/workflows/build.yml)
[![GHCR](https://img.shields.io/badge/GHCR-hovirix%2Fpostgres-blue?logo=github)](https://github.com/hovirix/postgres/pkgs/container/postgres)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)

Custom PostgreSQL image for my [homelab](https://github.com/hovirix/homelab).

Includes:

- PostgreSQL
- pgvector
- VectorChord
- earthdistance
- pgBackRest

Built and tested automatically with GitHub Actions and kept up to date with Renovate.

```bash
docker pull ghcr.io/hovirix/postgres:latest
```

## Why

Provides a single PostgreSQL runtime with the extensions and backup tooling required by the homelab, including Immich support.

Runtime configuration and deployment remain in the homelab repository.

## License

Copyright (c) 2026 Hovirix

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
