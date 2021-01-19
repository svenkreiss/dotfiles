Misc
----

Install homebrew from http://brew.sh/

.. code-block:: bash

    # Mac specific
    brew install python python2 python3 git bash-completion wget npm
    python -m pip install --upgrade pip  # also see: https://docs.brew.sh/Homebrew-and-Python
    # faster window animation speed:
    defaults write -g NSWindowResizeTime -float 0.01
    # to revert: defaults delete -g NSWindowResizeTime

    # Ubuntu
    sudo apt install -y python3-pip python3-venv zsh byobu curl git htop

    pip3 install thefuck

    git clone https://github.com/svenkreiss/dotfiles.git
    touch .secrets


iTerm2
------

Download: https://www.iterm2.com/downloads.html

Use ``dotfiles`` is the custom location for preferences. Set it in the first
tab of the general preferences view.


SSH
---

Modify ``~.ssh/config``:

.. code-block::

    Host *
     AddKeysToAgent yes
     UseKeychain yes
     IdentityFile ~/.ssh/github_rsa

``ssh-add -K ~/.ssh/github_rsa``


Java
----

``brew cask install java``.


Sublime Text
------------

Install the package manager first: https://packagecontrol.io/installation
Then:

.. code-block:: bash

    mv \
        ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User \
        ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User.backup
    ln -s ~/dotfiles/Sublime_User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User

    mkdir bin
    ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ~/bin/subl


BasicTex
--------

Download from: http://www.tug.org/mactex/morepackages.html


Visual Studio code
------------------

.. code-block:: bash

    cd ~/Library/Application\ Support/Code/
    mv User User_
    ln -s ~/dotfiles/VSCode_User User
    cd -

    # for better Python support in VSCode
    pip install jedi
    brew install ctags

    # Extensions: Python, Latex Workshop (install BasicTex beforehand), C++, Spell Right


Docker
------

Install Docker-for-Mac.


Google Cloud
------------

.. code-block:: bash

    curl https://sdk.cloud.google.com | bash
    gcloud init  # select zone us-east1-b
    gcloud components update kubectl

    # setup credentials and kubectl
    gcloud config set container/cluster CLUSTER_NAME
    gcloud container clusters get-credentials CLUSTER_NAME


Shell
-----

.. code-block:: bash

    # bash
    echo "source ${HOME}/dotfiles/bash_profile" >> .bash_profile
    configureGit

    # zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "source ${HOME}/dotfiles/zsh_profile" >> .zshrc
    configureGit


Pelican
-------

.. code-block:: bash

    cd tech
    git clone git@github.com:svenkreiss/pure.git pelican-theme-pure
    git clone git@github.com:svenkreiss/pelican-plugins.git --recursive
    npm install -g browser-sync

    npm install font-awesome katex
    cp -r node_modules/katex/dist/* content/extras/katex/
    cp -r node_modules/font-awesome/css content/extras/font-awesome/
    cp -r node_modules/font-awesome/fonts content/extras/font-awesome/


Computer Vision Tools
---------------------

MS COCO:

.. code-block:: bash

    cd ~/tech/data_mscoco
    gsutil ls gs://images.cocodataset.org  # to list available directories

    mkdir val2017
    gsutil -m rsync gs://images.cocodataset.org/val2017 val2017

    mkdir train2017
    gsutil -m rsync gs://images.cocodataset.org/train2017 train2017

    gsutil cp gs://images.cocodataset.org/annotations/annotations_trainval2017.zip .
    unzip annotations_trainval2017.zip

For virtualenv:

.. code-block:: bash

    pip install cython
    pip install 'git+https://github.com/cocodataset/cocoapi.git@master#subdirectory=PythonAPI'

    python -c "import torchvision; torchvision.datasets.CIFAR10(root='../data_cifar10', download=True)"


ImageNet:

.. code-block:: bash

    cd ~/tech/data_imagenet
    wget http://image-net.org/Annotation/Annotation.tar.gz
