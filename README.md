Rails-Crossite.vm
========================

A Starter Kit for Ruby on Rails Development.  
Inspired by the [Using Vagrant for Rails Development](https://gorails.com/guides/using-vagrant-for-rails-development)

## What's "Crossite" ?
Crossite is something to be laid under the train rails.

## Server environment to be set up
last update Dec 31, 2014

| Application  | Version  | Misc |
| ------------ | -------- | ---- |
| Ubuntu       | 14.04    | Based box is [box-cutter/ubuntu1404](https://atlas.hashicorp.com/box-cutter/boxes/ubuntu1404) |
| Ruby         | 2.2.0    |      |
| rbenv        | 0.4.0    |      |
| ruby_build   | 20140919 |      |
| rbenv-rehash |          |      |
| Nodejs       | v0.10.33 |      |
| PostgreSQL   | 9.3.5    | Default User and Password is `postgres@postgres` |
| MySQL        | 14.14    | Default User is `root`. Password is null |
| Redis Server | 2.8.15   |      |
| Vim          | 7.4.52   |      |
| Zsh          | 5.0.7    |      |

## Option
| Application  | Version  | Misc |
| ------------ | -------- | ---- |
| prezto       |          | Default theme `sorin` |

## Requirements
- Vagrant

- Favorite VM App
  - Virtualbox
  - VMWare
  - Parallels Desktop

- Vagrant Plugins
  - vagrant-librarian-chef
  - vagrant-omnibus
  - (vagrant-vmware-fusions)
  - (vagrant-parallels)

## Installation

1. Clone the repository to any work folder

        git clone https://github.com/zchee/crossite.vm.git

2. Fix Vagrantfile

3. Vagrant up

        vagrant up

## Box
[zchee/crossite.vm](https://atlas.hashicorp.com/zchee/boxes/rails-crossite.vm)

## TODO
- Error gem install on `rbenv` recipes.

## Change log
### 1.0.0 - Dev 31, 2014
Changed the base box to [box-cutter/ubuntu1404](https://atlas.hashicorp.com/box-cutter/boxes/ubuntu1404).  
Renamed `vagrant-rails-starterkit` to `Crossite.vm` and `Crossite.vm` Release Mejor version.

### 1.0.0 - Nov 10, 2014
Release Mejor version

### 0.2.0 - Sep 23, 2014
Add oh-my-zsh and prezto

### 0.1.0 - Sep 23, 2014
Initial commit
