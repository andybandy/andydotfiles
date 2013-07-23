installdependencies:
	if [ -d ~/.oh-my-zsh ]; then \
	echo "nothing to do"; else \
	git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh ; fi

build:
	if [ -d ~/.andydotfiles/backup ] ; then \
	echo "backup exists"; else \
	mkdir ~/.andydotfiles/backup ; fi
	if [ -f ~/.zshrc ] ; then \
	mv ~/.zshrc ~/.andydotfiles/backup/.zshrc ; fi
	if [ -f ~/.vimrc ] ; then \
	mv ~/.vimrc ~/.andydotfiles/backup/.vimrc ; fi
	if [ -f ~/.gitconfig ] ; then \
	mv ~/.gitconfig ~/.andydotfiles/backup/.gitconfig ; fi
	ln -s ~/.andydotfiles/.zshrc ~/.zshrc
	ln -s ~/.andydotfiles/.vimrc ~/.vimrc
	ln -s ~/.andydotfiles/.gitconfig ~/.gitconfig

uninstall:
	if [ -f ~/.andydotfiles/backup/.zshrc ] ; then \
	cp ~/.andydotfiles/backup/.zshrc ~/.zshrc ; else \
	rm -f ~/.zshrc; fi
	if [ -f ~/.andydotfiles/backup/.vimrc ] ; then \
	cp ~/.andydotfiles/backup/.vimrc ~/.vimrc ; else \
	rm -f ~/.vimrc; fi
	if [ -f ~/.andydotfiles/backup/.vimrc ] ; then \
	cp ~/.andydotfiles/backup/.gitconfig ~/.gitconfig ; else \
	rm -f ~/.gitconfig; fi
