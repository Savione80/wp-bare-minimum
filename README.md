# wp-bare-minimum
A WordPress bare minimum environment provided by a vagrant-vbox-puppet configuration with landrush and librarian puppet.
<br>
With this simple configuration you'll be able to run a new WordPress project inside a wirtual machine environment without the hassle of configuring it.

## What it provides
More or less these:
- Ubuntu 14.04 64 bit OS
- PHP 5.5.9
- MySQL 5.5.41 with a database named wordpress (username wp_user, password wpo4o4)
- Apache prefork 2.4.7 with mod_rewrite
- WordPress 4.1.1
- Xdebug working(hopefully) on port 9000
- A local DNS entry for www.wprova.lo

## Get it working
Excited about it? It simple and fast to have everything up and running. Let's see how.
### Dependencies you need
In order to run all the stuff you'll first need installed in your machine
- Virtual Box (https://www.virtualbox.org/)
- Vagrant (https://www.vagrantup.com/)

### Virtual Box plugins
Once installed the above software, you'll need a couple of vagrant plugins: `landrush` and `librarian puppet`.
<br>
In order to do so, type in your terminal:
```shell
$ vagrant plugin install landrush
```
and 
```shell
$ vagrant plugin install vagrant-librarian-puppet
```

### Folders
We are quite ready to have everything up and running, we need to create a module folder for puppet in our project root
```shell
$ mkdir puppet/modules
```
### Create and run your virtual machine
We are ready to type
```shell
$ vagrant up
```
And wait for the machine to be created and the environment to be setted up. Take into account that it will take some time, like 10 minutes to download all the dependencies, modules and stuff.

### What's next
Out-of-the-box you'll have a dedicated url inside your DNS to `www.wprova.lo` and an apache vhost pointing to the folder `project/app/` that you can change within the `puppet/manifests/bare_minimum.pp`.
#### Test it
If you now point your browser to `http://www.wprova.lo/` you should be able to the take the 5 minutes installation of wordpress.
#### SSH access
If you need to access your guest machine you can do this by typing
```shell
$ ssh vagrant@www.prova.lo
```
Using `vagrant` as password. This is a sudoer, so you can eventually type `sudo su` to screw everything up. :P 




