$(HOME)/.emacs.d:
	mkdir -p $@
	git clone --recursive https://github.com/syl20bnr/spacemacs $@

$(HOME)/.spacemacs: spacemacs
	ln -s $(shell pwd)/$< $@

install: $(HOME)/.emacs.d $(HOME)/.spacemacs
	emacs

uninstall:
	rm -rf $(HOME)/.emacs.d
	rm -f $(HOME)/.spacemacs
