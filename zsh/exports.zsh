# Currently this path is appended to dynamically when picking a ruby version
# zshenv has already started PATH with rbenv so append only here
#export PATH=$PATH:/usr/local/bin:/usr/local/sbin:$HOME/bin
export PATH=$PATH:/usr/local/sbin:$HOME/bin

# remove duplicate entries
typeset -U PATH

# Set default console Java to 1.6
if [[ $IS_MAC -eq 1 ]]; then
    export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
fi

# Setup terminal, and turn on colors
export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export LESS='--ignore-case --raw-control-chars'
export PAGER='less'
if [[ $IS_MAC -eq 1 ]]; then
    export EDITOR='subl -n'
fi
if [[ $IS_LINUX -eq 1 ]]; then
    export EDITOR='vim'
fi

# ant
export PATH=${PATH}:/Users/wuyexiong/DevSoft/Build/ant/bin

#Cocos2d-x
export COCOS2DX_HOME=/Users/wuyexiong/Android/game/cocos2d-x
export PATH=${PATH}:$COCOS2DX_HOME

#反编译工具
export PATH=${PATH}:/Users/wuyexiong/DevSoft/Fuck/apktool
export PATH=${PATH}:/Users/wuyexiong/DevSoft/Fuck/dex2jar

# set Android env
export ANDROID_HOME=/Users/wuyexiong/Android/android-sdk-macosx
export PATH=${PATH}:$ANDROID_HOME/tools
export PATH=${PATH}:$ANDROID_HOME/platform-tools
#export PATH=${PATH}:$ANDROID_HOME/build-tools/19.1.0
export PATH=${PATH}:$ANDROID_HOME/build-tools/20.0.0
export PATH=${PATH}:/Users/wuyexiong/Android/Tools
export PATH=~/bin:$PATH

#set Android ndk env
export NDK_ROOT=/Users/wuyexiong/Android/android-ndk
export PATH=${PATH}:$NDK_ROOT
export PATH=/usr/local/bin/npm/bin:$PATH

# Set Maven env
export M2_HOME=/Users/wuyexiong/DevSoft/Build/maven
export PATH=${PATH}:$M2_HOME/bin

#Go
export GOPATH=/Users/wuyexiong/treegogogo
# export GOROOT=$HOME/treegogogo
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

#set Gradle env
#export GRADLE_HOME=/Users/wuyexiong/DevSoft/Build/gradle
#export PATH=${PATH}:$GRADLE_HOME/bin

export SVN_HOME=/opt/subversion
export PATH=${PATH}:$SVN_HOME/bin
export PATH=/usr/local/bin:$PATH

#postgresql
export PGDATA=/usr/local/var/postgres/data

# Set LC_ALL="UTF8"
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANG=en_US.UTF-8

# Virtual Environment Stuff
#export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Documents/workspace
if [[ $HAS_VIRTUALENV -eq 1 ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi
#Docker
# export DOCKER_HOST=tcp://192.168.59.104:2376
# export DOCKER_CERT_PATH=/Users/wuyexiong/.boot2docker/certs/boot2docker-vm
# export DOCKER_TLS_VERIFY=1
#eval "$(boot2docker shellinit)"
