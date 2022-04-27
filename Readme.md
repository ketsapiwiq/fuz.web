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
* base_url : url de base pour les liens locaux, images, js etc...

# Makefile

* make init : installe le template
* make config : configure le fichier de conf du hugo config.toml (en l'ecrasant)
* make build : construit le site statique html dans public/
* make run : lance le serveur de teste
* make clean : supprime le site générer dans public
* make mrproper : make clean + suppression des submodule de templates et ressources/
* make help : aide
* make : appelle init config build

# Modification sur le site:

Editier content/index.md

# Construire le site
```
make init
make config # /!\ Attention écrase le fichier config.toml
make build
```

# Déployment

Copier le contenu de public/* dans votre serveur web.
Attention il convient de configurer la bonne baseurl dans var.mk
