#!/bin/bash

set -e
set -v

export KEYNAME=66F13ECC67A371B394CBEF30DD4723F38E8E7624

(
    set -e
    set -v

    cd ./ubuntu/

    # Packages & Packages.gz
    dpkg-scanpackages --multiversion . > Packages
    gzip -k -f Packages

    # Release, Release.gpg & InRelease
    apt-ftparchive release . > Release
    gpg --default-key "${KEYNAME}" -abs -o - Release > Release.gpg
    gpg --default-key "${KEYNAME}" --clearsign -o - Release > InRelease

    # Sign
    gpg --yes --clearsign -o InRelease Release
    gpg --yes -abs -o Release.gpg Release
)
