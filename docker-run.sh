#!/bin/bash
exec docker run -it --rm \
    -v $PWD/xremap:/xremap \
    build-xremap $*
