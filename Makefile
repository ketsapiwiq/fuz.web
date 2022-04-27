include var.mk

all: init config build

init:
	touch .gitmodules
	git submodule add ${git_template} ${git_submodulename} || :
	git submodule init
	git submodule update

config:
	echo "baseURL = '${base_url}'" > config.toml
	echo "languageCode = 'fr-fr'" >> config.toml
	echo "title = 'Fuz.re'" >> config.toml
	echo "theme = '${theme}'" >> config.toml

build:
	hugo -t $(theme) 

run:
	hugo server --bind ${bind_ip} --port ${bind_port}

clean:
	rm -rvf public/* || :
	rm -v .hugo_build.lock || :
	find . -type f -name '*~' | xargs rm -v || :

mrproper: clean
	rm .gitmodules || :
	git config --remove-section submodule.${git_submodulename}  || :
	rm -rvf .git/modules/themes  || :
	rm -rvf themes/*  || :
	git rm --cached .gitmodules ${git_submodulename} || :
	rm -rvf resources || :
help:
	@echo make init
	@echo make config
	@echo make build
	@echo make run
	@echo make clean
	@echo make mrproper
	@echo make => init config build
	@echo make help
