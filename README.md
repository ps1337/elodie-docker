# elodie-docker

[![Build Status](https://travis-ci.org/ps1337/elodie-docker.png?branch=master)](https://travis-ci.org/ps1337/elodie-docker)

A dockerized version of [elodie](https://github.com/jmathai/elodie). You can use the `Makefile` to build and run the image with `make build && make run`. Please make sure to add the `config` folder before doing this, so you can store elodie related config files on your host system. Also, the paths to `input` and `output` should be corrected for your system.

By default the mounted image folder is read only for security purposes.
