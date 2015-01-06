Example Rails App using DockerBDD
=================================
[![Circle CI](https://circleci.com/gh/coshx/docker-bdd-example.svg)](https://circleci.com/gh/coshx/docker-bdd-example)

This demonstrates how to use the images we've built from
[DockerBDD](https://github.com/coshx/docker-bdd) to run, test, and
build a container for a rails application.

Running
-------

See the [docker-bdd](https://github.com/coshx/docker-bdd) project for
more details, but the basics are:

- Using Vagrant:

        $ vagrant up
        $ vagrant provision

- Using natively installed docker and fig:

        $ fig build
        $ fig up -d

Now you can test out the rails app, running on [localhost:3000](http://localhost:3000)

Testing
-------

Assuming the app is already running (run `fig ps` to verify),

- Using Vagrant:

        $ vagrant ssh
        vagrant@ubuntu:~$ cd docker-bdd
        vagrant@ubuntu:~/docker-bdd$ rake

- Using natively installed docker and fig:

        $ fig run app rake


Continuous Integration
----------------------

[circle.yml](circle.yml) is configured for running the rails tests and
pushing an image to dockerhub upon success. You'll have login to
[circleCI](https://circleci.com), and edit the environment variables
for your project to include `DOCKER_EMAIL`, `DOCKER_PASS`, and
`DOCKER_USER`

