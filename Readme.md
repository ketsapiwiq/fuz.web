# prérequis

Installer les outils suivants:

* GNU Make
* git
* GoHugo [https://github.com/gohugoio/hugo/](https://github.com/gohugoio/hugo/)

# Configuration

Editer le fichier var.mk

* bind_ip : ip du serveur de teste
* bind_port : port du serveur de teste
* git_template : url du template à installer
* git_submodulename : destination du template (themes/<templatename>)
* theme : theme hugo a utiliser

# Makefile

* make init : installe le template
* make config : configure le fichier de conf du hugo config.toml (en l'ecrasant)
* make build : construit le site statique html dans public/
* make run : lance le serveur de teste
* make clean : supprime le site générer dans public
* make mrproper : make clean + suppression des submodule de templates et ressources/
* make help : aide
* make : appelle init config build run

# Modification sur le site:

Editier content/index.md

# Construire le site
```
make init
make config # /!\ Attention ecrase le fichier config.toml
make build
```
