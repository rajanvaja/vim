# vim

## Prerequisites
### tagbar
tagbar needs ctags to be installed. Install it using any of below commands:
1. Install Universal Ctags (recommended)
    ```
    sudo apt install universal-ctags
    ```
2. Install Exuberant Ctags
    ```
    sudo apt install exuberant-ctags
    ```

## How to use
This repository needs to be cloned inside your home (~) folder as .vim. Backup your existing ~/.vim if required.
1. Clone repository as ~/.vim
    ```
    git clone git@github.com:rajanvaja/vim.git ~/.vim
    ```
2. Enter repository directory and update submodules
    ```
    pushd ~/.vim
    git submodule update --init
    popd
    ```
