#!/bin/sh

# Copyright (c) glaszig

INSTALL_LINKS="
my.cnf /etc/my.cnf
gitignore $HOME/.gitignore
gitconfig $HOME/.gitconfig
.zshrc
.vim
.vimrc
.tm_properties
.gemrc
.irbrc
"

IFS_BAK=$IFS
IFS="
"

for file in $INSTALL_LINKS; do
    if [[ "$file" != "" ]]; then

        # one $file contains source and target
        src=$(echo $file | awk '{print $1}')
        tgt=$(echo $file | awk '{print $2}')

        # if no target was found, use home directory
        if [[ "$tgt" == "" ]]; then
            tgt="$HOME/$src"
        fi

        # skipping existing files/dirs
        if [[ -e "$tgt" ]]; then
            echo "$tgt exists. skipped."
            continue
        fi

        cmd="ln -sn $HOME/.dotfiles/$src $tgt"
        eval $cmd && echo "Linked $src to $tgt"

    fi
done

IFS=$IFS_BAK
IFS_BAK=
