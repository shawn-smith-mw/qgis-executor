# QGIS module for python

## Overview

This module creates an environment where python code can be executed in the context of QGIS. This enables developers to iterate quickly on projects reliant on QGIS without worrying about the tedious QGIS setup.

To utilize this package, first pull it from dockerhub [here](https://hub.docker.com/repository/docker/shawnsmithmw/qgis-executor). Then include it with FROM shawnsmithmw/qgis-executor:latest

## Details

The dockerfile uses Debian as the base file, then pulls in qgis and adds certain environment variables necessary for python-based execution
