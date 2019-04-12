

# tool-ivim

* tool-ivim ([GitHub](https://github.com/samwhelp/tool-ivim))


## Feature

On [Normal Mode](https://vimhelp.org/index.txt.html#normal-index), some key map added.

### Quick Switch

| Key | Map | Description |
| --- | --- | --- |
| `<Backspace>` | [C-w W](https://vimhelp.org/windows.txt.html#CTRL-W_W) | To Previous **Window** |
| `<Tab>` | [C-w w](https://vimhelp.org/windows.txt.html#CTRL-W_w) | To Next **Window** |
| `<Ctrl+j>` | [:bprevious](https://vimhelp.org/windows.txt.html#:bprevious)&lt;CR&gt; | To Previous **Buffer** |
| `<Ctrl+k>` | [:bnext](https://vimhelp.org/windows.txt.html#:bnext)&lt;CR&gt; | To Next **Buffer** |
| `<Ctrl+h>` | [:tabprevious](https://vimhelp.org/tabpage.txt.html#:tabprevious)&lt;CR&gt; | To Previous **TabPage** |
| `<Ctrl+l>` | [:tabnext](https://vimhelp.org/tabpage.txt.html#:tabnext)&lt;CR&gt; | To Next **TabPage** |

Please read doc/[feature](https://samwhelp.github.io/tool-svim-doc/read/en_us/#/feature) for more key binding.


## Doc

* [tool-svim-doc](https://samwhelp.github.io/tool-svim-doc)


## Howto use


### Way 1

``` sh
rm ~/.vimrc
rm ~/.vim
```

``` sh
ln -sf "$(pwd)" "$HOME/.vim"
```

### Way 2

run

``` sh
$ vim -u ./vimrc
```

## Info

run

``` sh
$ vim -c ':scriptnames'
```

``` sh
$ vim -c ':set rtp?'
```

or

``` sh
$ vim -c ':set runtimepath?'
```


## verbose

``` sh
$ vim -c ':verbose hi'
```

``` sh
$ vim -c ':verbose hi NonText'
```


## startuptime

> run `vim -h`, you can find `--startuptime`

run

``` sh
$ vim --startuptime test.txt -u vimrc
```

then

``` sh
$ less test.txt
```


## Prototype Project

* skel-project-plan/example/[project-vimrc](https://github.com/samwhelp/skel-project-plan/tree/gh-pages/example/project-vimrc)
