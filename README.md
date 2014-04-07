# installation

Install `vagrant` and `VirtualBox`

# Usage

    vagrant up

After this, Jenkins is available on [http://10.10.10.10:8080](http://10.10.10.10:8080)

## vagrant complaining

    Failed to mount folders in Linux guest. This is usually because
    the "vboxsf" file system is not available. Please verify that
    the guest additions are properly installed in the guest and
    can work properly. The command attempted was:
    
    mount -t vboxsf -o uid=`id -u vagrant`,gid=`getent group vagrant | cut -d: -f3`,nolock,vers=3,udp,noatime /vagrant /vagrant
    mount -t vboxsf -o uid=`id -u vagrant`,gid=`id -g vagrant`,nolock,vers=3,udp,noatime /vagrant /vagrant
    
Fix

    wget https://www.virtualbox.org/download/testcase/VBoxGuestAdditions_4.3.11-93070.iso
    sudo cp VBoxGuestAdditions_4.3.11-93070.iso /Applications/VirtualBox.app/Contents/MacOS/VBoxGuestAdditions.iso


# todo

 * include a master/slave setup for Jenkins (as two virtual machines)
 * include basic plug-in installation in jenkins
     https://wiki.jenkins-ci.org/display/JENKINS/Locale+Plugin
     https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin
     http://wiki.jenkins-ci.org/display/JENKINS/Git+Client+Plugin
 * provide basebox with [veewee](https://github.com/jedi4ever/veewee/blob/master/doc/vagrant.md)