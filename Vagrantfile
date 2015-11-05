VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Specify the base box
  config.vm.box = "Centos7"
  config.vm.box_url= "https://github.com/tommy-muehle/puppet-vagrant-boxes/releases/download/1.1.0/centos-7.0-x86_64.box"
  
  # Configure port forwarding
  config.vm.network :forwarded_port, guest: 80, host: 8931, auto_correct: true

  # Configure a shared folder with the host machine
  #config.vm.synced_folder "./", "/var/sharedFolder", create: true, group: "www-data", owner: "www-data"

  # Configure the VM, set the name, memory
  config.vm.provider "virtualbox" do |v|
    v.name = "Centos with GO environment"
    # Id is handle nativly by vagrant
    v.customize ["modifyvm", :id, "--memory", "1024"]
  end

  # Path to provisioning shell's script
  config.vm.provision "shell" do |s|
    s.path = "provision/setup.sh"
  end

  # Another way for the path to provisioning shell's script
  #config.vm.provision :shell, path: "provision/setup.sh"

end