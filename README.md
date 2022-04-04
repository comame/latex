## 使い方

### `bin/latex` を使う

事前に `bin/latex` を PATH に追加する。

```
latex [-w] [<filename>]

<filename> は拡張子を含まない .tex ファイルのファイル名

Options:
  -w, --watch    ファイルの更新時に再コンパイルする
```

### Docker イメージを直接使う

```
$ ls
filename.tex

$ docker run -v $(pwd):/home/user comameito/latex filename

$ ls
filename.tex filename.pdf filename.log
```
