### Dependencies

- Docker

### Install `latex` CLI

```
$ sudo curl -sSf -o /usr/local/bin/latex https://raw.githubusercontent.com/comame/latex/main/bin/latex

$ sudo chmod 755 /usr/local/bin/latex
```

## Usage

### `latex` CLI

```
latex [OPTIONS] [<FILENAME>]

<FILENAME> is the name of the `.tex` file without extension, such as "article" for "article.tex".

Options:
  -w, --watch                  Watch for file changes.
      --style <STYLE_FILE>     Override mystyle.sty.
      --show-style             Show default mystyle.sty.
      --show-sample            Show sample LaTeX source.
      --image <DOCKER_IMAGE>   Specify custom Docker image.
      --update                 Update docker image and CLI.
  -h, --help                   Display help.
```

### Use Docker image directory

```
$ ls
filename.tex

$ docker run -v $(pwd):/home/user comameito/latex filename

$ ls
filename.tex filename.pdf filename.log
```

## Troubleshooting

See [docs/troubleshooting.md](docs/troubleshooting.md)
