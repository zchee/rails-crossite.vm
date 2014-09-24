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
