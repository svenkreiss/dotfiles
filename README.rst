Misc
----

Install homebrew from http://brew.sh/

.. code-block:: bash

    brew install python python2 python3 git bash-completion wget npm
    python -m pip install --upgrade pip  # also see: https://docs.brew.sh/Homebrew-and-Python

    pip install thefuck

    git clone https://github.com/svenkreiss/dotfiles.git
    touch .secrets

    # add "source dotfiles/.bash_profile" to ~/.bash_profile with
    # echo "source dotfiles/.bash_profile" > .bash_profile
    configureGit()

    # faster window animation speed
    defaults write -g NSWindowResizeTime -float 0.01
    # to revert: defaults delete -g NSWindowResizeTime

    # python linting in Sublime needs global installs
    pip install flake8 hacking
    pip3 install flake8 hacking

    pip install virtualenv


iTerm2
------

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
DEPRECATED: Download JDK: http://www.oracle.com/technetwork/java/javase/downloads/index.html


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

    # Extensions: Python, Latex Workshop (install BasicTex beforehand), C++, Code Spell Checker, markdownlint


Docker
------

Install Docker Machine from https://docs.docker.com/machine/install-machine/
and VirtualBox from https://www.virtualbox.org/wiki/Downloads

.. code-block:: bash

    docker-machine create --driver=virtualbox default
    eval $(docker-machine env)


Google Cloud
------------

.. code-block:: bash

    curl https://sdk.cloud.google.com | bash  # when prompted, install to ~/tech
    gcloud init  # select zone us-east1-b
    gcloud components update kubectl

    # setup credentials and kubectl
    gcloud config set container/cluster CLUSTER_NAME
    gcloud container clusters get-credentials CLUSTER_NAME


Git Helpers
-----------

.. code-block:: bash

    cd tech; git clone https://github.com/ryan-williams/git-helpers/
    pip install -r ~/tech/git-helpers/requirements.txt


Docs
----

.. code-block:: bash

    npm install -g live-server

    # use in Pelican develop-server.sh:
    live-server . --port $port --host 127.0.0.1 --no-browser &


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
