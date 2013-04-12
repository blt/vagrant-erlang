Vagrant::Config.run do |config|
  config.vm.box = "CentOS"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-i386-v20130309.box"
  config.vm.host_name = "erl_virtual"
  config.vm.customize [
                       "modifyvm", :id,
                       "--cpus", "2"
                      ]

  config.vm.provision :shell, :path => "setup.sh"
end
