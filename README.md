## Usage

```
$ ls
your-filename.tex

$ docker run -v $(pwd):/home/user comameito/latex your-filename

$ ls
your-filename.tex your-filename.pdf your-filename.log
```

- Mount the directory containing `your-filename.tex` to container `/home/user`.
- Pass filename (without extension) as argument. When not specified, will be `doc`.
