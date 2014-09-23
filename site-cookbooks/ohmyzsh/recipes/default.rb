git "/home/vagrant/.oh-my-zsh" do
  repository  "git://github.com/robbyrussell/oh-my-zsh.git"
  reference   "master"
  action      :checkout
  user        "vagrant"
  group       "vagrant"
end

template "/home/vagrant/.zshenv" do
  path    "/home/vagrant/.zshenv"
  source  "zshenv.erb"
  owner   "vagrant"
  group   "vagrant"
  mode    0644
end

template "/home/vagrant/.zshrc" do
  path    "/home/vagrant/.zshrc"
  source  "zshrc.erb"
  owner   "vagrant"
  group   "vagrant"
  mode    0644
end

execute "set zsh as default shell" do
  command "chsh -s $(which zsh) vagrant"
end
