installdependencies:
	git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

build:
	mv ~/andydotfiles ~/.andydotfiles
	[ -d ~/.andydotfiles/backup ] mkdir ~/.andydotfiles/backup
	[ -f ~/.zshrc ] && cp ~/.zshrc ~/.andydotfiles/backup/.zshrc
	[ -f ~/.vimrc ] && cp ~/.vimrc ~/.andydotfiles/backup/.vimrc
	[ -f ~/.vimrc ] && cp ~/.gitconfig ~/.andydotfiles/backup/.gitconfig
	ln -s ~/.andydotfiles/.zshrc ~/.zshrc
	ln -s ~/.andydotfiles/.vimrc ~/.vimrc
	ln -s ~/.andydotfiles/.ginconfig ~/.gitconfig

uninstall:
	[ -f ~/.andydotfiles/backup/.zshrc ] && cp ~/.andydotfiles/backup/.zshrc ~/.zshrc
	[ -f ~/.andydotfiles/backup/.vimrc ] && cp ~/.andydotfiles/backup/.vimrc ~/.vimrc
	[ -f ~/.andydotfiles/backup/.vimrc ] && cp ~/.andydotfiles/backup/.gitconfig ~/.gitconfig
