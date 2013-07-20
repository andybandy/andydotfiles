installdependencies:
	if [ -d ~/.oh-my-zsh ]
	then
		git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
	else
		echo "nothing to do"
	fi

build:
	mv ~/andydotfiles ~/.andydotfiles
	if [ -d ~/.andydotfiles/backup ]
	then
		mkdir ~/.andydotfiles/backup
	fi
	if [ -f ~/.zshrc ]
	then
		cp ~/.zshrc ~/.andydotfiles/backup/.zshrc
	fi
	if [ -f ~/.vimrc ]
	then
		cp ~/.vimrc ~/.andydotfiles/backup/.vimrc
	fi
	if [ -f ~/.vimrc ]
	then
		cp ~/.gitconfig ~/.andydotfiles/backup/.gitconfig
	fi
	ln -s ~/.andydotfiles/.zshrc ~/.zshrc
	ln -s ~/.andydotfiles/.vimrc ~/.vimrc
	ln -s ~/.andydotfiles/.ginconfig ~/.gitconfig

uninstall:
	if [ -f ~/.andydotfiles/backup/.zshrc ]
	then
		cp ~/.andydotfiles/backup/.zshrc ~/.zshrc
	fi
	if [ -f ~/.andydotfiles/backup/.vimrc ]
	then
		cp ~/.andydotfiles/backup/.vimrc ~/.vimrc
	fi
	if [ -f ~/.andydotfiles/backup/.vimrc ]
	then
		cp ~/.andydotfiles/backup/.gitconfig ~/.gitconfig
	fi
