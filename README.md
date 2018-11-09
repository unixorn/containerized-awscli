# containerized-awscli

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

Run `awscli` or `s3cmd` in a container. This tooling is released under the Apache 2.0 license.

## Motivation

The security ~malware~ software on my work machine slows down the `aws` and `s3cmd` commands. Running them in a Docker container sans malware speeds things up, and as an added benefit, updates itself faster than `brew` updates software versions.

## Pre-requisites

You need to install Docker.

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
