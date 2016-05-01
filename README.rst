Misc
----

Install homebrew from http://brew.sh/

.. code-block:: bash

    brew install python git bash-completion
    pip install thefuck

    git clone https://github.com/svenkreiss/dotfiles.git
    touch .secrets

    # add "source dotfiles/.bash_profile" to ~/.bash_profile
    # echo "source dotfiles/.bash_profile" > .bash_profile
    configureGit()

    # faster window animation speed
    defaults write -g NSWindowResizeTime -float 0.01
    # to revert: defaults delete -g NSWindowResizeTime

    # python linting in Sublime needs global installs
    pip install flake8 hacking
    pip3 install flake8 hacking


iTerm2
------

Use ``dotfiles`` is the custom location for preferences. Set it in the first
tab of the general preferences view.


Java
----

Download JDK: http://www.oracle.com/technetwork/java/javase/downloads/index.html


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

    curl https://sdk.cloud.google.com | bash  # when prompted, install to ~/tech/google-cloud-sdk
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
