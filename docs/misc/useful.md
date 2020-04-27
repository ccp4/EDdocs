[TOC]

#ccp4
- To commit changes : `gitci [msg]` or `git add -A && git commit -m [msg]`
- To update on brno server : `ssh brno "cd /home/tarik/Documents/git/ccp4 && git pull"`
- To serve [file system](http://0.0.0.0:8001/) links : `cdccp4; python3 -m http.server 8001`


#Linux
##keyboard mapping
- To see event related keys : `xev`
- To assign shiftR to the 'Pause' key  : `xmodmap "key 62 = Pause"`

Since xev shows that key 62 is associated with the ShiftR key.

## Code analysis
- cloc is a program to check the number of blank, comments and code lines : `cloc .`

# GIT
## enable automatic login
- Follow the git doc in addingan agent ssh-add agent and keypair
- replace {--https://www.--} by {==git@==} in *remote* address in **.git/config**.


# Web
## Firefox
**quick search on websites**
Set wiktionary firefox toolbar [quick search access](https://en.wikipedia.org/wiki/Wikipedia:Tools/Browser_tools/Mozilla_Firefox/URL_shortcut) :

- add as a favory with `keyword wk`
- change location to `https://en.wikionary.org/wiki/%s`

Now wiktionary page is automatically reached doing : `wk [search]`

## serve file system on browser
File system broadcast through http : `python3 -m http.server 8001`


# Image manipulation
## Tile
put several images in same .png : `montage *.png -tile 4x1 -geometry +0+0 out.png`

# Misc
## unicode UTF-8
command line  encoded characters :
See [greek](https://en.wikipedia.org/wiki/List_of_Unicode_characters) or [arabic](https://en.wikipedia.org/wiki/Arabic_script_in_Unicode) unicode tables : `printf "\u0637" `
