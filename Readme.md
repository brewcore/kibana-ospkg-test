# Kibana Package Testing Proof of Concept

using [http://serverspec.org/](http://serverspec.org/)

## Goal

Test that OS packages for Kibana behave as expected on different OS's.

## Dependencies

- Ruby
- [Bundler](http://bundler.io/)
- Vagrant
- Virtualbox

## Running Tests

- Install dependencies listed above.
- Run ```bundle install``` to install gem dependencies.
- Run ```rake``` from this directory to execute tests.  The rake task will run ```vagrant up``` for each system to be tested, and ```vagrant halt``` upon completion.

## Thoughts

- The test process is slow due to the time required to provision and boot/halt virtual machines. The impact of this could be lessened by running the jobs via CI on a cloud service.
- This could be built upon to test upgrade scenarios as well.
- The tooling provides support for reading system information such as memory usage, might be useable to watch for issues such as high memory usage during upgrade.
