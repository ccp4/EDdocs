# Misc useful commands and notions

## Firefox

### quick search on websites
Set wiktionary firefox toolbar [quick search access](https://en.wikipedia.org/wiki/Wikipedia:Tools/Browser_tools/Mozilla_Firefox/URL_shortcut) :

- add as a favory with `keyword wk`
- change location to `https://en.wikionary.org/wiki/%s`

Now wiktionary page is automatically reached doing : `wk [search]`


## Various
### serve file system on browser
File system broadcast through http

`python3 -m http.server 8001`


### Image manipulation
put several images in same .png :

`montage *.png -tile 4x1 -geometry +0+0 out.png`


### command line unicode UTF-8 encoded characters
See [greek](https://en.wikipedia.org/wiki/List_of_Unicode_characters) or [arabic](https://en.wikipedia.org/wiki/Arabic_script_in_Unicode) unicode tables :

`printf "\u0637" `
