Vagrant.configure("2") do |config|
  config.vm.network "public_network", :mac => "080027B712F7", bridge: ["en0: Wi-Fi (Wireless)", "en0", "bridge0"]
  config.vm.box = "geerlingguy/ubuntu1804"
  config.vm.provision "shell", run: "once", path: "provision.sh"

  config.vm.synced_folder ".", "/vagrant", disabled: true

  config.vm.provider :virtualbox do |vb|
    vb.memory = 1536
    vb.cpus = 1
  end
end
