package "git" do
end

git "/home/vagrant/devstack" do
  repository "git://github.com/openstack-dev/devstack.git"
end

cookbook_file "/home/vagrant/devstack/localrc" do
  source "localrc.sh"
  owner "vagrant"
  group "vagrant"
  mode 0644
end

directory "/opt/stack" do
  owner "vagrant"
  group "vagrant"
  mode  0755
end

directory "/opt/stack/logs" do
  owner "vagrant"
  group "vagrant"
  mode  0755
end

directory "/opt/stack/logs/screen" do
  owner "vagrant"
  group "vagrant"
  mode  0755
end

bash "change_file_user" do
  cwd "/home/vagrant"
  code <<-EOH
  chown -R vagrant:vagrant devstack
  EOH
end

bash "kick_devstack" do
  environment 'USER' => "vagrant"
  user "vagrant"
  group "vagrant"
  cwd "/home/vagrant/devstack"
  code <<-EOH
  ./stack.sh
  EOH
end
