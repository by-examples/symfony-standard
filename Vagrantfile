VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.box = "symfony-v2.0.2"
    config.vm.box_url = "http://boxes.gajdaw.pl/symfony/symfony-v2.0.2.box"

    config.vm.hostname = "abc.example.net"

    config.vm.provider :virtualbox do |v|
        v.customize ["modifyvm", :id, "--memory", 1024]
    end

    config.vm.network :forwarded_port, guest: 80, host: 8880, host_ip: "127.0.0.1"
    config.vm.network :forwarded_port, guest: 9999, host: 9999, host_ip: "127.0.0.1"
    config.vm.network :forwarded_port, guest: 3306, host: 3306, host_ip: "127.0.0.1"

#    config.vm.network "private_network", ip: "192.168.200.245"
#    config.vm.synced_folder ".", "/vagrant", :nfs => true

    config.vm.provision "shell", path: "composer-install.bash", run: "always"
    config.vm.provision "shell", path: "reload.bash", run: "always"

end
