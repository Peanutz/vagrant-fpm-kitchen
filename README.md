# vagrant-fpm-kitchen (yolo edition)

Build deb/rpm packages using [fpm][1], [fpm-cookery][2] and [Vagrant][3].

Forked from [bdossantos][6]'s own project which is 
Inspired by [prognostikos][4]'s [project][5].

## Requirements

* Vagrant, yarly
* Debian Vagrant box ( the default vagrant box is from vagrant cloud, and is a wheezy64 )
* Hands

## Usage

```
# Boot up VM (no shit)
vagrant up
# Build one specific package
vagrant ssh -- -t '/vagrant/package.sh RECIPE_NAME'
# OR 
# Build all packages (the ones depending on each other will do what they have to do)
vagrant ssh -- -t '/vagrant/package.sh'

```

[1]: https://github.com/jordansissel/fpm
[2]: https://github.com/bernd/fpm-cookery
[3]: http://www.vagrantup.com/
[4]: https://github.com/prognostikos
[5]: https://github.com/prognostikos/vagrant-fpm-kitchen
[6]: https://github.com/bdossantos
[7]: https://github.com/bdossantos/vagrant-fpm-kitchen
