Vagrant.configure("2") do |config|
  config.ssh.insert_key = false
  
  config.vm.provision "shell", inline: "sudo echo humano | passwd root --stdin"
  config.vm.provision "shell", inline: "adduser mortal"
  config.vm.provision "shell", inline: "sudo echo humano | passwd mortal --stdin"
  config.vm.provision "shell", inline: "echo LC_CTYPE=en_US.UTF-8 >>  /etc/environment  "
  config.vm.provision "shell", inline: "
  echo '
  #Mis contactos 
  #Instagram https://www.instagram.com/linuxparamortales
  #Twitter https://twitter.com/jonmonterox
  #Facebook Opensaturday https://www.facebook.com/linuxparamortales
  
  config.vm.define :linuxparamortales do |linuxparamortales|
  linuxdo.vm.box = "almalinux/8"
  linuxdo.vm.hostname = "tercerplaneta.local"
  linuxdo.vm.network :private_network, ip: "192.168.56.150"
  linuxdo.vm.disk :disk, name: "disk1", size: "1GB"
  linuxdo.vm.provider :virtualbox do |vb|
  vb.memory = 2048
  vb.cpus = 1
  vb.name = "LinuxParaMortales"
  end
  end
  end

