required_plugins = ["vagrant-hostsupdater", "vagrant-berkshelf"]
required_plugins.each do |plugin|
  unless Vagrant.has_plugin? plugin
    puts "Installing vagrant plugin #{plugin}"
    Vagrant::Plugin::Manager.instance.install_plugin(plugin)
    puts "Installed vagrant plugin #{plugin}"
  end
end

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network("private_network", ip: "192.168.10.100")
  config.hostsupdater.aliases = ["jenkins.local"]
  config.vm.synced_folder "environment", "/home/ubuntu/environment"
  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--memory", 6048]
    v.customize ["modifyvm", :id, "--cpus", "2"]
  end
  config.vm.provision "shell", path: "environment/provision.sh", privileged: false
  config.vm.provision "chef_solo" do |chef|
    chef.add_recipe "jenkinsCookbook::default"
  end
end
