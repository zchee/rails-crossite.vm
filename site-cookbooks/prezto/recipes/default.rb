git "/home/vagrant/.zprezto" do
  repository  "https://github.com/sorin-ionescu/prezto.git"
  reference   "master"
  action      :checkout
  user        "vagrant"
  group       "vagrant"
end

template "/home/vagrant/zsh/.zlogin" do
  path    "/home/vagrant/.zlogin"
  source  "zlogin.erb"
  owner   "vagrant"
  group   "vagrant"
  mode    0644
end

template "/home/vagrant/zsh/.zlogout" do
  path    "/home/vagrant/.zlogout"
  source  "zlogout.erb"
  owner   "vagrant"
  group   "vagrant"
  mode    0644
end

template "/home/vagrant/zsh/.zpreztorc" do
  path    "/home/vagrant/.zpreztorc"
  source  "zpreztorc.erb"
  owner   "vagrant"
  group   "vagrant"
  mode    0644
end

template "/home/vagrant/zsh/.zprofile" do
  path    "/home/vagrant/.zshrc"
  source  "zshrc.erb"
  owner   "vagrant"
  group   "vagrant"
  mode    0644
end

template "/home/vagrant/zsh/.zshenv" do
  path    "/home/vagrant/.zshenv"
  source  "zshenv.erb"
  owner   "vagrant"
  group   "vagrant"
  mode    0644
end

template "/home/vagrant/zsh/.zshrc" do
  path    "/home/vagrant/.zshrc"
  source  "zshrc.erb"
  owner   "vagrant"
  group   "vagrant"
  mode    0644
end

execute "set zsh as default shell" do
  command "chsh -s $(which zsh) vagrant"
end
