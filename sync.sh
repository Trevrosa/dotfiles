#!/usr/bin/env bash

dir=$(dirname $0)

rsync -av $1 --filter="merge $dir/config.filter" ~/.config/ ~/.dotfiles/.config
