Misc
----

.. code-block:: bash

    touch .secrets


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


iTerm2
------

Use ``dotfiles`` is the custom location for preferences. Set it in the first
tab of the general preferences view.


Command line git completion
---------------------------

.. code-block:: bash

    brew install git bash-completion
    configureGit()


thefuck
-------

``pip install thefuck``
