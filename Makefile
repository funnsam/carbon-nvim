install-unix:
	- mkdir ~/.config/nvim/syntax/ -p
	- mkdir ~/.config/nvim/ftdetect/ -p
	cp ./syntax.vim   ~/.config/nvim/syntax/carbon.vim
	cp ./ftdetect.vim ~/.config/nvim/ftdetect/carbon.vim
