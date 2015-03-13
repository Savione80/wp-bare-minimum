# wp-bare-minimum
A WordPress bare minimum environment provided by a vagrant-vbox-puppet configuration with landrush and librarian puppet.
<br>
With this simple configuration you'll be able to run a new WordPress project inside a wirtual machine environment without the hassle of configuring it

## Dependencies you need
In order to run all the stuff you'll first need installed in your machine
- Virtual Box (https://www.virtualbox.org/)
- Vagrant (https://www.vagrantup.com/)

## Virtual Box plugins
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

## Folders
We are quite ready to have everything up and running, we need to create a module folder for puppet in our project root
```shell
$ mkdir puppet/modules
```
## Create and run your virtual machine
We are ready to type
```shell
$ vagrant up
```
And wait for the machine to be created and the environment to be setted up. 

## What's next
Out-of-the-box you'll have a dedicated url inside your DNS to `www.wprova.lo` and an apache vhost pointing to the folder `project/app/` that you can change within the `puppet/manifests/bare_minimum.pp





