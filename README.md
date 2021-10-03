# Install

Prepare config and python enviroment:

```
mkdir ~/.config/nvim
cp nvim/init.vim ~/.config/nvim
python -m venv ~/neoenv
~/neoenv/bin/pip install -r requrements.txt
```

Install vim-plug

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```
:PlugInstall deoplete-jedi
:PlugInstall neoformat
:PlugInstall nerdcommenter
:PlugInstall deoplete.nvim
:PlugInstall vim-airline
:PlugInstall vim-airline-themes
:PlugInstall nerdtree
:PlugInstall syntastic
:PlugInstall jedi-vim
:PlugInstall iceberg.vim
:PlugInstall vim-highlightedyank
:PlugInstall vim-flake8
```
