# Packer project - Reduced developer desktop image Lubuntu 16.04  Vagrant Box

<!-- MarkdownTOC depth=3 -->

- [Features](#features)
- [Requirements](#requirements)
- [Usage](#usage)
    - [User accounts](#user-accounts)
    - [Shared folder](#shared-folder)
- [License](#license)
- [Author Information](#author-information)

<!-- /MarkdownTOC -->


## Features

**Current Ubuntu Version Used**: 16.04.1

This project build configuration installs and configures Ubuntu 16.04 x86_64 minimal using __Ansible__, and then generates two Vagrant box files, for:

  - VirtualBox
  - VMware

This image configures a developer box with following requirements:

- Ubuntu 16.04
- Lubuntu Core Desktop
- JDK 8
- Spring Tool Suite
- Maven
- Payara Server
- MySql
- MySql workbench
- Docker
- JBoss Forge
- Chromium
- Creates a developer account
- Configures admin account for Payara and MySql
- Starts MySql like service
- Add asadmin tool on the developer PATH
- Right permissions for update and install plugins on eclipse with developer account 
- Developer account has root rights, sudo and docker groups

__Does not contain__

- Office suites
- Multimedia software

_Developer account has admin rights_

## Requirements

The following software must be installed/present on your local machine before you can use Packer to build the Vagrant box file:

  - [Packer](http://www.packer.io/)
  - [Vagrant](http://vagrantup.com/)
  - [VirtualBox](https://www.virtualbox.org/) (if you want to build the VirtualBox box)
  - [VMware Fusion](http://www.vmware.com/products/fusion/) (or Workstation - if you want to build the VMware box)
  - [Ansible](http://docs.ansible.com/intro_installation.html)

You will also need some Ansible roles installed so they can be used in the building of the VM. To install the roles:

  1. Run `$ ansible-galaxy install -r requirements.yml` in this directory.
  2. If your local Ansible roles path is not the default (`/etc/ansible/roles`), update the `role_paths` inside `ubuntu1604.json` to match your custom location.

If you don't have Ansible installed (perhaps you're using a Windows PC?), you can simply clone the required Ansible roles from GitHub directly (use [Ansible Galaxy](https://galaxy.ansible.com/) to get the GitHub repository URLs for each role listed in `requirements.yml`), and update the `role_paths` variable to match the location of the cloned role.

## Usage

Make sure all the required software (listed above) is installed, then cd to the directory containing this README.md file, and run:

    $ packer build ubuntu1604.json

After a few minutes, Packer should tell you the box was generated successfully.

If you want to only build a box for one of the supported virtualization platforms (e.g. only build the VMware box), add `--only=vmware-iso` to the `packer build` command:

    $ packer build --only=vmware-iso ubuntu1604.json

If you want virtualbox use: 

      $ packer build --only=virtualbox-iso ubuntu1604.json

Also, you could test the image with Vagrant.

            vagrant init dpalomar/uc3mTiw; vagrant up

### User accounts

- __Developer__: tiw/tiw (root rights, no sudo password)
- __Payara__: admin/admin
- __MySql__: root/admin

### Shared folder

- /vagrant


## License

MIT license.

## Author Information

Created in 2016 by David Palomar based on a template by [Jeff Geerling](http://jeffgeerling.com/) and modified with some great stuff from Bento project and a lot of hours.