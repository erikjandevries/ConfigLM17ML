# Config Linux Mint 17 for Machine Learning
This is a script for setting up and configuring a fresh installation of Linux Mint 17.1 for Machine Learning.
It installs a bunch of packages, and I might add other features as I go along...

## How to start
The quickest way to start, is to open a terminal in your home folder and execute:

    wget -qO- https://raw.githubusercontent.com/erikjandevries/ConfigLM17ML/master/ConfigLM17ML | bash /dev/stdin

This script creates a folder "Repositories" and uses git to clone this repository into a subfolder. Then it executes the start-all script from the repository.
