# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Use Ubuntu 14.04 Trusty Tahr 64-bit as our operating system
  config.vm.box = "ubuntu/trusty64"

  # Forward the Rails server default port to the host
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :forwarded_port, guest: 6379, host: 6379
  config.vm.network :private_network, ip: "192.168.77.7"
  config.vm.synced_folder "app/", "/app", type: "nfs"

  # Configurate the virtual machine to use 2GB of RAM
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provider 'parallels' do |ps, override|
    # Optional
    # override.vm.box = "fainder/rails-starter"
    override.vm.box = "parallels/ubuntu-14.04"
    ps.optimize_power_consumption = false
    ps.check_guest_tools = false
    ps.memory = 1024
    ps.cpus = 2
  end

  # Use Chef Solo to provision our virtual machine
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks", "site-cookbooks"]

    chef.add_recipe "apt"
    chef.add_recipe "ruby_build"
    chef.add_recipe "rbenv::user"
    chef.add_recipe "rbenv::vagrant"
    chef.add_recipe "nodejs"
    chef.add_recipe "vim"
    chef.add_recipe "zsh"
    chef.add_recipe "mysql::client"
    chef.add_recipe "mysql::server"
    chef.add_recipe "postgresql"
    chef.add_recipe "postgresql::server"
    chef.add_recipe "redis"
    chef.add_recipe "redis::server"

    chef.add_recipe "prezto"

    # Install Ruby 2.1.3 and Bundler
    # Set an empty root password for MySQL to make things simple
    chef.json = {
      mysql: {
        server_root_password: ''
      },
      postgresql: {
        password: 'postgres'
      },
      rbenv: {
        user_installs: [{
          user: 'vagrant',
          rubies: [ '2.1.3' ],
          global: '2.0.0-p353',
          gems: {
            '2.1.3' => [
              { name: 'bundler' }
            ]
          },
          plugins: [
            { 'name' => 'rbenv-gemset',
              'git_url' => 'https://github.com/jf/rbenv-gemset.git'
            },
            { 'name' => 'rbenv-gem-rehash',
              'git_url' => 'https://github.com/sstephenson/rbenv-gem-rehash.git'
            }
          ]
        }]
      }
    }
  end

end
