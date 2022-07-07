### Dependencies

- Docker

### `latex` CLI

Moved to [comame/cli-tools](https://github.com/comame/cli-tools/tree/main/latex)

### Use Docker image directory

```
$ ls
filename.tex

$ docker run -v $(pwd):/home/user comameito/latex filename

$ ls
filename.tex filename.pdf filename.log
```
