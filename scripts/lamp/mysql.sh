#! /usr/bin/env bash

export DEBIAN_FRONTEND=false

apt-get update > /dev/null

apt-get install --yes --force-yes mysql-server
