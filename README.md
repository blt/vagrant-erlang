# vagrant-erlang

## What it is

It's just a few scripts allowing you to quickly setup a CentOS 6.4 environment
with erlang R15B03 installed. It uses [vagrant][1] with [kerl][2] to install
erlang.

### Files:

 * `Vagrantfile` - vagrant config file
 * `setup.sh` - the provisioning script

## Getting up and running

First, be sure to have Vagrant installed. If you don't, consult Vagrant's
excellent [Getting Started][3] documentation. Once vagrant is installed, from
the root of this project:

    $ vagrant up

Once this is completed, you can log into your new system:

    $ vagrant ssh

### Packaging the box for reuse

You can package your VM into a new box:

    $ vagrant package

This will create `package.box` file. Add it to vagrant using:

    $ vagrant box add vagrant-centos6.4-erlang package.box

To use the newly create box in your project initiate vagrant like this:

    $ vagrant init vagrant-centos6.4-erlang


[1]: https://github.com/mitchellh/vagrant "Vagrant - Tool for building and distributing virtualized development environments"
[2]: https://github.com/spawngrid/kerl "Kerl - Easy building and installing of Erlang/OTP instances"
[3]: http://docs.vagrantup.com/v2/getting-started/index.html "Vagrant - Getting Started"
