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

# set Android env
#export ANDROID_HOME=/Users/wuyexiong/Android/env/adt-bundle-mac-x86_64-20130514/sdk
export ANDROID_HOME=/Users/wuyexiong/Android/android-sdk-macosx
export PATH=${PATH}:$ANDROID_HOME/tools
export PATH=${PATH}:$ANDROID_HOME/platform-tools
export PATH=${PATH}:$ANDROID_HOME/build-tools/17.0.0
#Cocos2d-x
export COCOS2DX_HOME=/Users/wuyexiong/Android/game/cocos2d-x
export PATH=${PATH}:$COCOS2DX_HOME

export PATH=${PATH}:/Users/wuyexiong/Android/soft/apktool1.5.2
export PATH=${PATH}:/Users/wuyexiong/Android/soft/dex2jar-0.0.9.13
#set Android ndk env
export NDK_ROOT=/Users/wuyexiong/Android/android-ndk-r9
export PATH=${PATH}:$NDK_ROOT/

# Set Maven env
export M2_HOME=/Users/wuyexiong/Dev/build/apache-maven
export PATH=${PATH}:$M2_HOME/bin

#set Gradle env
export GRADLE_HOME=/Users/wuyexiong/DevSoft/Build/gradle
export PATH=${PATH}:$GRADLE_HOME/bin

export SVN_HOME=/opt/subversion
export PATH=${PATH}:$SVN_HOME/bin

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
