#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles
# in ~/dotfiles
############################

########## Variables

DIR=$PWD                    # current dotfiles directory
OLD_DIR=~/dotfiles_old      # old dotfiles backup directory
CONFIG_LIST="vim"
##########

# Create dotfiles_old in home directory
echo "Creating $OLD_DIR backup of any existing dotfiles in ~"
mkdir -p $OLD_DIR
echo "...done"

# Change to the dotfiles directory
cd $DIR

# Move any existing dotfiles in homedir to dotfiles_old directory, then create
# symlinks
echo "Moving any existing dotfiles from ~ to $OLD_DIR"
for CONFIG in $CONFIG_LIST; do
    echo "Moving $CONFIG and related files to $OLD_DIR"
    if [ -f ~/.${CONFIG}rc ]
    then
        mv ~/.${CONFIG}rc $OLD_DIR/
    fi
    if [ -d ~/.$CONFIG ]
    then
        mv ~/.$CONFIG/ $OLD_DIR/$CONFIG/
    fi

    echo "Creating symlinks to ${CONFIG}rc and $CONFIG/ in home directory."
    ln -s $DIR/$CONFIG/${CONFIG}rc ~/.${CONFIG}rc
    ln -s $DIR/$CONFIG/$CONFIG ~/.$CONFIG
done
