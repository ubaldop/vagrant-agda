# To avoid problems if the host's locale is not supported in the VM,see
# https://www.vagrantup.com/docs/vagrantfile/tips.html#overwrite-host-locale-in-ssh-session.
ENV["LC_ALL"] = "en_US.UTF-8"
HOSTNAME="agda-vm"

Vagrant.configure("2") do |config|
  config.vm.box = "archlinux/archlinux"
  config.vm.hostname = HOSTNAME
  config.vm.provision :shell, :path => "provision.sh"
  # Shared folders
  config.vm.synced_folder "src", "/vagrant", owner: "vagrant", group: "vagrant"
  
  # Removes "stdin: is not a tty" annoyance as per
	# https://github.com/SocialGeeks/vagrant-openstack/commit/d3ea0695e64ea2e905a67c1b7e12d794a1a29b97
	config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
	#setup X-Forwarding
	config.ssh.forward_x11 = true

  config.vm.provider :virtualbox do |vb|
    vb.name = HOSTNAME
    vb.memory = 2048
    vb.cpus = 1
    vb.customize ["modifyvm", :id, "--vram", "128", "--accelerate3d", "off", "--uartmode1", "disconnected"]
  end
end