installdependencies:
	git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

build:
	cp ~/.zshrc ~/.andydotfiles/backup/.zshrc
	cp ~/.vimrc ~/.andydotfiles/backup/.vimrc
	cp ~/.gitconfig ~/.andydotfiles/backup/.gitconfig
	ln -s ~/.andydotfiles/.zshrc ~/.zshrc
	ln -s ~/.andydotfiles/.vimrc ~/.vimrc
	ln -s ~/.andydotfiles/.ginconfig ~/.gitconfig

uninstall:
	cp ~/.andydotfiles/backup/.zshrc ~/.zshrc
	cp ~/.andydotfiles/backup/.vimrc ~/.vimrc
	cp ~/.andydotfiles/backup/.gitconfig ~/.gitconfig
