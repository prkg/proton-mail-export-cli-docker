# Proton Mail Export CLI

Simple Dockerfile for the [Proton Mail Export CLI Tool](https://proton.me/support/proton-mail-export-tool).

## Usage

Clone repo and run

```bash
docker build -t proton-export . docker run --rm -v $(pwd):/export -it proton-export
```
