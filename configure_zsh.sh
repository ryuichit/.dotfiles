if [ "$SHELL" = "/bin/bash" ]; then
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        case $ID in
            ubuntu)
                sudo apt install zsh
                ;;
            centos)
                sudo yum install zsh
                ;;
            amzn)
                sudo yum install zsh
                ;;
            *)
                echo "Unknown Linux OS"
                ;;
        esac
    fi
    chsh -s $(which zsh)
fi
