Vagrant.configure("2") do |config|
  config.vm.box = "dhoppe/ubuntu-14.04.5-amd64"
  # ENV['LC_ALL'] = "en_GB.UTF-8"
  # ENV['LANG'] = "en_GB.UTF-8"

  # config.ssh.username = "ohc"
  # config.ssh.password = "super!"

  # django
  config.vm.network "forwarded_port", guest: 80, host: 8080


  config.ssh.forward_agent = true
  config.vm.network "forwarded_port", guest: 5000, host: 5000
  config.vm.synced_folder "./src", "/usr/lib/server_restore", create: true
  config.vm.provision "ansible" do |ansible|
    ENV["ANSIBLE_COW_SELECTION"] ||= "stegosaurus"
    ansible.playbook = "provision/vagrant.yml"
    ansible.extra_vars = { ansible_python_interpreter:"/usr/bin/python2" }
    ansible.verbose = 'vvvv'
  end
end
