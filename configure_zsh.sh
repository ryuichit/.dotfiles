if [ "$SHELL" == "/bin/bash" ]; then
    sudo apt install zsh
    chsh -s $(which zsh)
fi
