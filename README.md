# containerized-awscli

## Status

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
[![Build Status](https://travis-ci.org/unixorn/containerized-awscli.svg?branch=master)](https://travis-ci.org/unixorn/containerized-awscli)
[![GitHub stars](https://img.shields.io/github/stars/unixorn/containerized-awscli.svg)](https://github.com/unixorn/containerized-awscli/stargazers)
[![Code Climate](https://codeclimate.com/github/unixorn/containerized-awscli/badges/gpa.svg)](https://codeclimate.com/github/unixorn/containerized-awscli)
[![Issue Count](https://codeclimate.com/github/unixorn/containerized-awscli/badges/issue_count.svg)](https://codeclimate.com/github/unixorn/containerized-awscli)
[![GitHub last commit (branch)](https://img.shields.io/github/last-commit/unixorn/containerized-awscli/master.svg)](https://github.com/unixorn/containerized-awscli)

Run `awscli` or `s3cmd` in a container. This tooling is released under the Apache 2.0 license.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Table of Contents

- [containerized-awscli](#containerized-awscli)
  - [Motivation](#motivation)
  - [Pre-requisites](#pre-requisites)
  - [Installation](#installation)
    - [Antigen](#antigen)
    - [Oh-My-Zsh](#oh-my-zsh)
    - [Zgen](#zgen)
    - [Without a framework, or for bash users](#without-a-framework-or-for-bash-users)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Motivation

The security ~software~ malware on my work machine frequently breaks the `aws` and `s3cmd` commands when they tweak the settings. I need them for work, so I built a container they can't break.

Running them in a Docker container sans malware has an added benefit by providing updates to new versions faster than `brew` updates does.

## Pre-requisites

* You need to install Docker.
* You need `AWS_SECRET_ACCESS_KEY` and `AWS_ACCESS_KEY_ID` set in your environment

## Installation

### [Antigen](https://github.com/zsh-users/antigen)

Add `antigen bundle unixorn/containerized-awscli` to your `.zshrc` with your other bundle commands.

Antigen will handle cloning the plugin for you automatically the next time you start zsh. You can also add the plugin to a running ZSH session with `antigen bundle unixorn/containerized-awscli` for testing before adding it to your `.zshrc`.

### [Oh-My-Zsh](http://ohmyz.sh/)

1. `cd ~/.oh-my-zsh/custom/plugins`
2. `git clone git@github.com:unixorn/containerized-awscli.git containerized-awscli`
3. Add tumult to your plugin list - edit `~.zshrc` and change `plugins=(...)` to `plugins=(... containerized-awscli)`

### [Zgen](https://github.com/tarjoilija/zgen)

Add `zgen load unixorn/containerized-awscli` to your `.zshrc` file in the same function you're doing your other `zgen load` calls in. Zgen will handle automatically cloning the plugin for you the next time you do a `zgen save`.

### Without a framework, or for bash users

1. `git clone` this repository
2. Add `/path/to/repository/bin` to your `$PATH`
