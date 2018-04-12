# Agda VM with ArchLinux

This repository contains a Vagrant setup for an ArchLinux virtual machine containing Agda.
It contains the following files:

- `Vagrantfile` - it is the Vagrant VM setup
- `provision.sh` - it is the shell script installing all the required packages
- `src` - it is a local folder mounted as Vagrant Synced Folder. It contains a helloworld example written in Agda.
- `agda.md` - it is the help of the agda command


### Commands to launch the virtual machine

```bash
vagrant up
```

### Commands to build Agda Hello World
Once launched, you could test the proper installation by executing the following:

```bash
echo "Logging to the VM"
vagrant ssh
echo "Navigating to the folder containing the example"
cd /vagrant
echo "Compile the Hello World example"
stack exec agda --package ieee754 --package text
stack exec -- agda -i /usr/share/agda/lib/ -i . -c helloworld.agda
echo "Launching the compiled application"
./helloworld
```

