# Kibana Package Testing Demo

using [http://serverspec.org/](http://serverspec.org/)

## Goal

Test in an automated fashion that OS packages for Kibana create users, install as a service, and start successfully on Ubuntu and CentOS.

## Dependencies

- Ruby
- Serverspec gem
- Vagrant

## Running Tests

Once dependencies are installed, simply run ```rake``` from this directory to execute tests.  The rake task will run ```vagrant up``` for each system to be tested, and ```vagrant halt``` upon completion.

## Thoughts

- The test process is slow due to the time required to provision and boot/halt virtual machines. The impact of this could be lessened by running the jobs via CI on a cloud service.
