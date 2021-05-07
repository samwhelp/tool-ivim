

# tool-ivim

* [tool-ivim](https://github.com/samwhelp/tool-ivim) ([GitHub](https://github.com/samwhelp/tool-ivim))


## Installer

* [vimrc-get](https://github.com/samwhelp/note-about-vim/tree/gh-pages/_demo/project/vimrc-profile/vimrc-get)

``` sh
$ vimrc-get ivim
```

## Doc

* [tool-ivim-doc](https://samwhelp.github.io/tool-ivim-doc) ([GitHub](https://github.com/samwhelp/tool-ivim-doc))
* note-about-vim / [ivim](https://samwhelp.github.io/note-about-vim/read/project/ivim.html)


## Keybind

* [en_us](https://samwhelp.github.io/tool-ivim-doc/read/en_us/feature/keybind.html)
* [zh_tw](https://samwhelp.github.io/tool-ivim-doc/read/zh_tw/feature/keybind.html)


## Plugin

* [en_us](https://samwhelp.github.io/tool-ivim-doc/read/en_us/feature/plugin.html)
* [zh_tw](https://samwhelp.github.io/tool-ivim-doc/read/zh_tw/feature/plugin.html)


## Prototype Projects

* [ivim](https://github.com/samwhelp/note-about-vim/tree/gh-pages/_demo/prototype/ivim)
* skel-project-plan/example/[project-vimrc](https://github.com/samwhelp/skel-project-plan/tree/gh-pages/example/project-vimrc)


## Related Projects

* [tool-svim](https://github.com/samwhelp/tool-svim)
* [tool-mvim](https://github.com/samwhelp/tool-mvim)
* [tool-lvim](https://github.com/samwhelp/tool-lvim)
* [tool-hvim](https://github.com/samwhelp/tool-hvim)


## Clone Command

``` sh
git clone https://github.com/samwhelp/tool-ivim
git clone https://github.com/samwhelp/tool-ivim-doc
```










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
