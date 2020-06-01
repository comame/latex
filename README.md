## Usage

```
$ ls
your-filename.tex

$ docker run -v $(pwd):/home/user comameito/latex your-filename

$ ls
your-filename.tex your-filename.pdf your-filename.log
```
