#!/bin/sh
SV_VERSION="0"
SHELL_ACTIVE="${HOME}/.$(basename $SHELL)rc"

null() {
	"$@" >/dev/null 2>&1
}

cp -r ./Sublivim ~/.Sublivim
cd ~

if [ -d $HOME/.vim ] && [ -f $HOME/.vimrc ]; then
	echo "Sauvegarde de vos anciennes configurations Vim : ~/old-conf-vim.tar"
	tar -cf old-conf-vim.tar .vim .vimrc
	rm -rf .vim .vimrc
fi

echo "Installation du Sublivim"
ln -s .Sublivim/vimrc $HOME/.vimrc
ln -s .Sublivim/vim $HOME/.vim
if [ ! -e ~/.Sublivim/config_perso ]; then
	echo "let g:syntastic_c_include_dirs = ['../../../include', '../../include','../include','./include']" > ~/.Sublivim/config_perso
fi

SBVRC="$HOME/.Sublivim/sublivimrc.sh"

if ! cat $SHELL_ACTIVE | grep "source $SBVRC" >/dev/null; then
	echo "source $SBVRC" >> $SHELL_ACTIVE
	. $SBVRC
fi

null cd -
