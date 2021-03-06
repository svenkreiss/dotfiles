# IMPORTS
source .secrets

# data
if [ -d ${HOME}/tech/data_osm ]; then
    export DATA_OSM=${HOME}/tech/data_osm
fi

# terminal
eval "$(thefuck --alias)"
export HISTCONTROL=ignoredups

# git helpers
if [ -d ${HOME}/tech/git-helpers ]; then
    source ${HOME}/tech/git-helpers/.git-rc
fi

# torch
if [ -d ${HOME}/torch ]; then
    . ${HOME}/torch/install/bin/torch-activate
fi

# ruby
export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if [[ -s ${HOME}/.rvm/scripts/rvm ]]; then
  source ${HOME}/.rvm/scripts/rvm;
fi

# python
va() {
    if [ -d venv3 ]; then
        source venv3/bin/activate
    elif [ -d venv ]; then
        source venv/bin/activate
    elif [ -d venv2 ]; then
        source venv2/bin/activate
    fi
}

va_() {
    source venv/bin/activate
}

va2() {
    source venv2/bin/activate
}

va3() {
    source venv3/bin/activate
}

# node
export PATH=node_modules/.bin:$PATH

# hadoop
if [ -f /usr/local/Cellar/hadoop/2.7.0/sbin/start-dfs.sh ]; then
    alias hstart="/usr/local/Cellar/hadoop/2.7.0/sbin/start-dfs.sh;/usr/local/Cellar/hadoop/2.7.0/sbin/start-yarn.sh"
    alias hstop="/usr/local/Cellar/hadoop/2.7.0/sbin/stop-yarn.sh;/usr/local/Cellar/hadoop/2.7.0/sbin/stop-dfs.sh"
    # pysparkling tests
    export HDFS_TEST_PATH=hdfs://localhost:50070/user/hadoop
fi

# pysparkling tests
export S3_TEST_PATH=s3n://svenkreiss/pysparkling-testing
# word2vec
export WORD2VEC_FILENAME=${HOME}/tech/data_word2vec/GoogleNews-vectors-negative300.bin.gz

# for homebrew
export PATH=/usr/local/bin:~/bin:$PATH

# Cuda
export PATH=/Developer/NVIDIA/CUDA-7.5/bin:$PATH
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-7.5/lib:$DYLD_LIBRARY_PATH

# Go
export GOPATH=${HOME}/tech/go
export PATH=${HOME}/tech/go/bin:/usr/local/opt/go/libexec/bin:$PATH

# Git
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
source /usr/local/etc/bash_completion.d/git-prompt.sh
export PS1='\[\033[01;31m\][\h]\[\033[01;34m\]:\W$(__git_ps1) >\[\033[00m\] ';
export GIT_PS1_SHOWDIRTYSTATE=1

configureGit()
{
    git config --global color.ui auto
    git config --global user.name "Sven Kreiss"
    git config --global user.email me@svenkreiss.com
    git config --global credential.helper osxkeychain
    git config --global push.default simple
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Android NDK
export PATH="${HOME}/tech/android_ndk/android-ndk-r10e:$PATH"

# Android
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# Google Cloud SDK
if [ -d ${HOME}/tech/google-cloud-sdk ]; then
    # The next line updates PATH for the Google Cloud SDK.
    source "${HOME}/tech/google-cloud-sdk/path.bash.inc"

    # The next line enables shell command completion for gcloud.
    source "${HOME}/tech/google-cloud-sdk/completion.bash.inc"
fi

# plotting inside of iterm2
export MPLBACKEND="module://itermplot"
