Misc
----

Install homebrew from http://brew.sh/

.. code-block:: bash

    brew install python git bash-completion
    pip install thefuck

    git clone https://github.com/svenkreiss/dotfiles.git
    touch .secrets

    # add "source dotfiles/.bash_profile" to ~/.bash_profile
    configureGit()

    # faster window animation speed
    defaults write -g NSWindowResizeTime -float 0.01
    # to revert: defaults delete -g NSWindowResizeTime


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
