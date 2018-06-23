color_reset='\033[0m'
color='\033[0;34m'

function show {
    echo -e "${color}$1${color_reset}"
}

show "[?] current_directory = $(pwd)" 
current_directory=$(pwd)

show "[?] mkdir -p $HOME/.vim/pack/plugins/start"
mkdir -p $HOME/.vim/pack/plugins/start/

show "[+] cd $HOME/.vim/pack/plugins/start"
cd $HOME/.vim/pack/plugins/start/

show "[+] Download lightline.vim"
git clone https://github.com/itchyny/lightline.vim.git

show "[+] Download NERDTree"
git clone https://github.com/scrooloose/nerdtree.git

show "[+] Download nerdtree-execute"
git clone https://github.com/ivalkeen/nerdtree-execute.git

show "[+] Download tagbar"
git clone https://github.com/majutsushi/tagbar.git

show "[?] cd $current_directory"
cd $current_directory

show "[+] Copy .vimrc to $HOME/.vimrc"
cp dotfiles/.vimrc $HOME/.vimrc

show "[+] Copy .Xdefaults to $HOME/.Xdefault"
cp dotfiles/.Xdefaults $HOME/.Xdefaults

show "[?] mkdir -p $HOME/.config/i3/config"
mkdir -p $HOME/.config/i3/

show "[+] Copy dotfiles/.config/i3/config to $HOME/.config/i3/"
cp dotfiles/.config/i3/config $HOME/.config/i3/
