#!/bin/bash -e

#updating pacman packages
pacman --noconfirm -Syyu
#installing prerequirements
pacman --noconfirm -Sy ansible vim nano unzip wget git make gcc clang dnsutils
yes | pacman -Sy virtualbox-guest-utils
pacman --noconfirm -Sy emacs
#pacman --noconfirm -Sy ghc-static ghc-libs ghc
pacman --noconfirm -Sy stack

#updating cabal
stack update

#Installing agda
pacman --noconfirm -Sy agda
pacman --noconfirm -Sy agda-stdlib