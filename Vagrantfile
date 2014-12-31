Vagrant.configure(2) do |config|
  config.vm.box = 'box-cutter/ubuntu1404'


  # Forward the Rails server default port to the host
  config.vm.network :forwarded_port, guest: 3000, host: 3000, auto_correct: true
  config.vm.network :forwarded_port, guest: 6379, host: 6379, auto_correct: true
  config.vm.network :private_network, ip: '192.168.77.77'
  config.vm.synced_folder 'app/', '/app', type: 'nfs'

  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--memory', '2048', '--cpus', '2', '--ioapic', 'on']
  end

  config.vm.provider :vmware_fusion do |vm, override|
    vm.vmx['memsize']  = '1024'
    vm.vmx['numvcpus'] = '2'
  end

  config.vm.provider :parallels do |ps, override|
    ps.optimize_power_consumption = false
    ps.memory = 1024
    ps.cpus = 2
  end


  config.omnibus.chef_version = :latest


  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :machine
  end


  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ['cookbooks', 'site-cookbooks']

    chef.add_recipe 'apt'
    chef.add_recipe 'build-essential'
    chef.add_recipe 'git'
    chef.add_recipe 'libffi-dev'
    chef.add_recipe 'ruby_build'
    chef.add_recipe 'rbenv::user'
    chef.add_recipe 'rbenv::vagrant'
    chef.add_recipe 'database::mysql'
    chef.add_recipe 'database::postgresql'
    chef.add_recipe 'mysql::server'
    chef.add_recipe 'postgresql::server'
    chef.add_recipe 'sqlite'
    chef.add_recipe 'redis2'
    chef.add_recipe 'nodejs'
    chef.add_recipe 'vim'
    chef.add_recipe 'zsh'
    chef.add_recipe 'prezto'

    chef.json = {
      mysql: {
        service_name: 'mysql',
        server_root_password: 'mysql'
      },
      postgresql: {
        password: 'postgres',
        pg_hba: [
          {:type => 'local', :db => 'all', :user => 'postgres', :addr => nil, :method => 'md5'},
          {:type => 'local', :db => 'all', :user => 'all', :addr => nil, :method => 'ident'},
          {:type => 'host', :db => 'all', :user => 'all', :addr => '127.0.0.1/32', :method => 'md5'},
          {:type => 'host', :db => 'all', :user => 'all', :addr => '::1/128', :method => 'md5'}
        ]
      },
      rbenv: {
        user_installs: [{
          user: 'vagrant',
          rubies: [ '2.2.0' ],
          global: '2.2.0',
          plugins: [
            { 'name' => 'rbenv-gem-rehash',
              'git_url' => 'https://github.com/sstephenson/rbenv-gem-rehash.git'
            }
          ]
        }]
      },
      zsh: {
        user: 'vagrant'
      },
      prezto: {
        user: 'vagrant',
        group: 'vagrant'
      }
    }
  end

end
