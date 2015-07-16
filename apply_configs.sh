git config --global user.name "Justin Peterson"
git config --global user.email jmp3833@rit.edu

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp bash_profile ~/.bash_profile
cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf
cp github_completion.sh ~/.github_completion.sh

vim +PluginInstall +qall

bash ~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
