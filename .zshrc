#1
HISTFILE=~/.zhistory
SAVEHIST=100000 #number of command saving in .zhistory
HISTSIZE=10000 #in zsh executing
alias history='history -10000'
#2
PS1='%%'
PS1='%n%% '
RPS1='[%~]'

autoload -U colors  #color
colors

#PS1="%{${fg[blue]}${bg[red]}%}"
#PROMPT='%{^[[32m%}%B%U%n@%m%#%{^[[m%}%u%b '
#RPROMPT='%{^[[32m%}%B[%d]%{^[[m%}%b'
#SPROMPT='%{^[[33m%} %BCurrenct> '\''%r'\'' [Yes, No, Abort, Edit]%{^[[m%}%b '

autoload -U compinit
compinit

#3
setopt IGNORE_EOF  #Ctrl+dによるログアウトを防ぐ
setopt NO_CLOBBER  #ファイルの上書きを阻止する
#setopt CORRECT_ALL


#history系
# 複数のzshを同時に使用したときに履歴ファイルを上書きせず追加する
setopt APPEND_HISTORY
# 履歴ファイルに時刻を記載
setopt EXTENDED_HISTORY
# 直前と同じコマンドを履歴に残さない
setopt HIST_IGNORE_DUPS
# 履歴を複数端末で共有
setopt SHARE_HISTORY


#5
watch=(all)  #ログイン、ログアウトの監視

setopt MULTIOS  #(default)リダイレクトで複数のファイルを指定することができる




#
unsetopt BEEP

alias ls='ls -FCG'

#setopt LIST_ROWS_FIRST  #
#setopt AUTO_CD #cdコマンドの自動入力(ディレクトリ名だけで移動)

#setopt AUTO_CDABLE_VARS
#setopt CDABLE_VARS
#setopt PUSHD_IGNORE_DUPS
#setopt PUSHD_SILENT  #pushd実行後にディレクトリスタックの情報を表示しない
setopt AUTO_PUSHD  #cdコマンドでもディレクトリスタックに保存する
setopt PUSHD_TO_HOME  #pushd実行でホームディレクトリに移動する

setopt NOHUP


#8
NULLCMD=cat  #コマンドを省略して>をおこなった場合の実行コマンドを定義する(default cat)
READNULLCMD=more  #コマンドを省略して<をおこなった場合の実行コマンドを定義する(default more)

printArg0 () {
    echo "Argument = $*"
    echo "Num of Argument = $#"
    echo "Arg[1] = $argv[1], Arg[2] = $argv[2]"
}
#fpath1=(~/func $fpath1)
#autoload ${fpath1[1]}/*(:t)

#fpath1=(~/education/c/pjt $fpath1)
#autolosd ${fpath1[1]}/*(:t)



#10
alias -g G='|grep'
setopt CORRECT_ALL #ファイル名,コマンド名の訂正機能をオンにする
alias mv='nocorrect mv'
alias cp='nocorrect cp'
alias mkdir='nocorrect mkdir'
export PAGER=/usr/bin/less
#11
FCEDIT=emacs

#own
alias rm='rm -v'

autoload -Uz zmv
alias zmv='noglob zmv -W'

# zsh option
setopt interactive_comments  # コマンドラインでも # 以降をコメントと見なす
setopt magic_equal_subst     # コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる

# zstyle
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:default' menu select=1  # 補完中の対象をハイライトする

# function
function docker-machine-start() {
    docker-machine start $1
    if (docker-machine env $1 2>&1 | grep -q 'regenerate-certs'); then
        docker-machine regenerate-certs $1
    fi
}

#tex
#2015/02/18
export TEXINPUTS=.:~/src/:

#R
export R_HOME=/Library/Frameworks/R.framework/Versions/3.0/Resources/

# Xcode
#alias symbolicatecrash='/Applications/Xcode.app/Contents/SharedFrameworks/DTDeviceKitBase.framework/Versions/A/Resources/symbolicatecrash'
# Xcode 7.3
alias symbolicatecrash='/Applications/Xcode.app/Contents/SharedFrameworks/DVTFoundation.framework/Versions/A/Resources/symbolicatecrash'

#export DEVELOPER_DIR="/Applications/Xcode-6.4.app/Contents/Developer/"
#export DEVELOPER_DIR="/Applications/Xcode.app/Contents/Developer/"

# less
export LESS='-R'
export LESSOPEN='|lessfilter %s'
#export LESSOPEN='| /opt/local/bin/src-hilite-lesspipe.sh %s'
export LESSKEY='~/.lesskey'

#cat
#alias cat='pygmentize -O style=monokai -f terminal256 -g -O encoding=utf-8'
function cl() {
    c $1 | nl -n ln -b a
}

#homebrew
#export HOMEBREW_CACHE=/opt/homebrew/cache

#grep
export GREP_COLOR="01;32"
alias grep='grep --color=auto'

# cocoapods
alias pod=/Users/ryuichi/.rbenv/shims/pod
#alias pod=/usr/local/bin/pod

# diff
if ! type colordiff > /dev/null 2>&1; then
    if [ "$(uname)" = "Darwin" ]; then
        brew install colordiff
    elif [ -f /etc/os-release ]; then
        case $ID in
            ubuntu)
                sudo apt install -y colordiff
                ;;
            centos)
                sudo yum install -y colordiff
                ;;
            amzn)
                sudo amazon-linux-extras install -y epel
                sudo yum install -y --enablerepo=epel colordiff
                ;;
            *)
                echo "Unknown Linux OS"
                ;;
        esac
    else
        echo "Cannot determine the OS"
    fi
fi
alias diff='colordiff -uprN'

#tmux
if ! type tmux > /dev/null 2>&1; then
    if [ "$(uname)" = "Darwin" ]; then
        brew install tmux
    elif [ -f /etc/os-release ]; then
        case $ID in
            ubuntu)
                sudo apt install -y tmux
                ;;
            centos)
                sudo yum install -y tmux
                ;;
            amzn)
                sudo yum install -y tmux
                ;;
            *)
                echo "Unknown Linux OS"
                ;;
        esac
    else
        echo "Cannot determine the OS"
    fi
fi

#emacs
if ! type emacs > /dev/null 2>&1; then
    if [ "$(uname)" = "Darwin" ]; then
        brew install emacs
    elif [ -f /etc/os-release ]; then
        case $ID in
            ubuntu)
                sudo apt install -y emacs
                ;;
            centos)
                sudo yum install -y emacs
                ;;
            amzn)
                sudo yum install -y emacs
                ;;
            *)
                echo "Unknown Linux OS"
                ;;
        esac
    else
        echo "Cannot determine the OS"
    fi
fi

# git
alias gd='git diff'
alias gl='git log --all --date-order --graph --oneline --decorate'
alias gs='git status'
if ! type diff-highlight > /dev/null 2>&1; then
    if [ "$(uname)" = "Darwin" ]; then
        brew install git
        ln -s $HOMEBREW_PREFIX/share/git-core/contrib/diff-highlight/diff-highlight $HOMEBREW_PREFIX/bin/diff-highlight
    elif [ -f /etc/os-release ]; then
        case $ID in
            ubuntu)
                sudo apt install -y git
                sudo chmod +x /usr/share/doc/git/contrib/diff-highlight/diff-highlight
                sudo ln -s /usr/share/doc/git/contrib/diff-highlight/diff-highlight /usr/local/bin/diff-highlight
                ;;
            centos)
                # Nothing to do
                ;;
            amzn)
                # Nothing to do
                ;;
            *)
                echo "Unknown Linux OS"
                ;;
        esac
    else
        echo "Cannot determine the OS"
    fi
fi

# github
if ! type hub > /dev/null 2>&1; then
    if [ "$(uname)" = "Darwin" ]; then
        brew install hub
    elif [ -f /etc/os-release ]; then
        case $ID in
            ubuntu)
                sudo apt install -y hub
                ;;
            centos)
                sudo yum install -y hub
                ;;
            amzn)
                sudo yum install -y hub
                ;;
            *)
                echo "Unknown Linux OS"
                ;;
        esac
    else
        echo "Cannot determine the OS"
    fi
fi
eval "$(hub alias -s)"
compdef hub=git
alias gb='git browse'
if [ "$(uname)" = "Darwin" ]; then
else
    sudo cp ~/.dotfiles/iterm /usr/local/bin/
    export BROWSER=iterm
fi

# tig
if ! type tig > /dev/null 2>&1; then
    if [ "$(uname)" = "Darwin" ]; then
        brew install tig
    elif [ -f /etc/os-release ]; then
        case $ID in
            ubuntu)
                sudo apt install -y tig
                ;;
            centos)
                sudo yum install -y tig
                ;;
            amzn)
                sudo yum install -y tig
                ;;
            *)
                echo "Unknown Linux OS"
                ;;
        esac
    else
        echo "Cannot determine the OS"
    fi
fi
alias g='tig'

# node
export PATH="$HOME/.nodenv/bin:$PATH"
if ! type nodenv > /dev/null 2>&1; then
    if [ "$(uname)" = "Darwin" ]; then
        brew install nodenv
    else
        git clone https://github.com/nodenv/nodenv.git ~/.nodenv
        cd ~/.nodenv && src/configure && make -C src
        mkdir -p "$(nodenv root)"/plugins
        git clone https://github.com/nodenv/node-build.git "$(nodenv root)"/plugins/node-build
    fi
fi
eval "$(nodenv init -)"

# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if ! type pyenv > /dev/null 2>&1; then
    if [ "$(uname)" = "Darwin" ]; then
        brew install pyenv
    elif [ -f /etc/os-release ]; then
        case $ID in
            ubuntu)
                git clone https://github.com/pyenv/pyenv.git ~/.pyenv
                sudo apt install -y build-essential
                cd ~/.pyenv && src/configure && make -C src
                # Pythonの依存ライブラリをインストール
                sudo apt install -y zlib1g-dev libssl-dev \
                     libbz2-dev libncurses5-dev libffi-dev libreadline-dev libsqlite3-dev liblzma-dev
                ;;
            centos)
                ;;
            amzn)
                ;;
            *)
                echo "Unknown Linux OS"
                ;;
        esac
    else
        echo "Cannot determine the OS"
    fi
fi
eval "$(pyenv init -)"
export PATH="$HOME/.local/bin:$PATH"

#ruby
if ! type rbenv > /dev/null 2>&1; then
    if [ "$(uname)" = "Darwin" ]; then
        brew install rbenv ruby-build
        eval "$(rbenv init -)"
    fi
fi

# go
#export GOROOT=$HOME/lib/go
#export GOBIN=$GOROOT/bin
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"

# mysql
export PATH="$HOMEBREW_PREFIX/opt/mysql@5.7/bin:$PATH"
if ! type mysql > /dev/null 2>&1; then
    if [ "$(uname)" = "Darwin" ]; then
        brew install mysql@5.7
    fi
fi

# mycli
if ! type mycli > /dev/null 2>&1; then
    if [ "$(uname)" = "Darwin" ]; then
        brew install mycli
    fi
fi

# azure cli
if ! type az > /dev/null 2>&1; then
    if [ "$(uname)" = "Darwin" ]; then
        brew install azure-cli
    else
        curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
    fi
fi

# awscli
if ! type aws > /dev/null 2>&1; then
    if [ "$(uname)" = "Darwin" ]; then
        curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
        sudo installer -pkg AWSCLIV2.pkg -target /
    elif [ -f /etc/os-release ]; then
        case $ID in
            ubuntu)
                sudo apt install -y unzip
                if [ $(uname -m) = "x86_64" ]; then
                    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
                else
                    curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
                fi
                unzip awscliv2.zip
                sudo ./aws/install
                ;;
            centos)
                ;;
            amzn)
                ;;
            *)
                echo "Unknown Linux OS"
                ;;
        esac
    else
        echo "Cannot determine the OS"
    fi
fi

# saml2aws
if ! type saml2aws > /dev/null 2>&1; then
    if [ "$(uname)" = "Darwin" ]; then
        brew install saml2aws
    fi
fi

# gcloud
if ! type gcloud > /dev/null 2>&1; then
    if [ "$(uname)" = "Darwin" ]; then
    elif [ -f /etc/os-release ]; then
        case $ID in
            ubuntu)
                sudo apt install -y apt-transport-https ca-certificates gnupg
                echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
                curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
                sudo apt update -y && sudo apt install -y google-cloud-cli
                gcloud init
                ;;
            centos)
                ;;
            amzn)
                ;;
            *)
                echo "Unknown Linux OS"
                ;;
        esac
    else
        echo "Cannot determine the OS"
    fi
fi

# chrome
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/ryuichit/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/ryuichit/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/ryuichit/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/ryuichit/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh
