sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)
rm -rf ~/bin ~/.cdict ~/.vim ~/.vimrc ~/.zshrc
cp -r bin ~
cp .cdict ~
cp -r .vim ~
cp .vimrc ~
cp .zshrc ~
source ~/.zshrc
