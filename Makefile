DOTPATH			:= $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
CANDIDATES		:= $(wildcard .??*)
EXCLUSIONS		:= .DS_Store .git .gitmodules .gitignore
DOTFILES		:= $(filter-out $(EXCLUSIONS), $(CANDIDATES))

all:

deploy:
	@echo "Create links"
	@echo ""
	@$(foreach file, $(DOTFILES), ln -sfnv $(abspath $(file)) $(HOME)/$(file);)

init:
	DOTPATH=$(DOTPATH) bash $(DOTPATH)/etc/init.sh

update:
	git pull origin master

install: update deploy init

clean:
	@echo "Remove dotfiles"
	@-$(foreach file, $(DOTFILES), rm -vrf $(HOME)/$(file);)
	@echo "Remove repository"
	-rm -rf $(DOTPATH)
