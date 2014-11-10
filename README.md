Vagrant-Rails-StarterKit
========================

A Starter Kit for Ruby on Rails Development
Inspired by the [Using Vagrant for Rails Development](https://gorails.com/guides/using-vagrant-for-rails-development)

## Installation

1. Clone the repository to any work folder

        git clone https://github.com/zchee/vagrant-rails-starterkit.git

2. Fix Vagrantfile

3. Vagrant up

        vagrant up

## Requirements

- Vagrant

- Parallels Desktop

- Vagrant Plugins
  - vagrant-cachier
  - vagrant-librarian-chef
  - vagrant-omnibus
  - vagrant-parallels

## Environment
Sep 23, 2014

| Application  | Version  | Misc |
| ------------ | -------- | ---- |
| Ubuntu       | 14.04    | Based box is [parallels/ubuntu-14.04](https://vagrantcloud.com/puphpet/boxes/ubuntu1404-x64) |
| Ruby         | 2.1.3    |      |
| rbenv        | 0.4.0    |      |
| ruby_build   | 20140919 |      |
| rbenv-gemset |          |      |
| rbenv-rehash |          |      |
| Nodejs       | v0.10.32 |      |
| PostgreSQL   | 9.3.5    | Default User and Password is `postgres@postgres` |
| MySQL        | 14.14    | Default User is `vagrant`. Password is null |
| Redis Server | 2.8.15   |      |
| Vim          | 7.4.52   |      |
| Zsh          | 5.0.2    |      |

## Option

| Application  | Version  | Misc |
| ------------ | -------- | ---- |
| oh-my-zsh    |          | Default theme `robbyrussell` |
| prezto       |          | Default theme `sorin` |

## Box
[fainder/rails-starter](https://vagrantcloud.com/fainder/boxes/rails-starter)

## TODO

- Supporting to Virtual Box and VMWare

## Change log

### 0.2.0 - Sep 23, 2014
Add oh-my-zsh and prezto

### 0.1.0 - Sep 23, 2014
Initial commit
