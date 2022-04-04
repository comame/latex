### 依存関係

- docker

### インストール

1. `bin/latex` を PATH に追加する

## 使い方

### `latex` CLI を使う

```
latex [OPTIONS] [<FILENAME>]

<FILENAME> は拡張子を含まない .tex ファイルのファイル名

Options:
  -w, --watch    ファイルの更新時に再コンパイルする
  -h, --help     ヘルプを表示する
```

### Docker イメージを直接使う

```
$ ls
filename.tex

$ docker run -v $(pwd):/home/user comameito/latex filename

$ ls
filename.tex filename.pdf filename.log
```
