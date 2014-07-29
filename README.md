# Memcached Dockerfile

A Dockerfile that produces a Docker Image for [Memcached](http://memcached.org/).

## Memcached version

The `master` branch currently hosts Memcached 1.4.

Different versions of Memcached are located at the github repo [branches](https://github.com/frodenas/docker-memcached/branches).

## Usage

### Build the image

To create the image `frodenas/memcached`, execute the following command on the `docker-memcached` folder:

```
$ docker build -t frodenas/memcached .
```

### Run the image

To run the image and bind to host port 11211:

```
$ docker run -d --name memcached -p 11211:11211 frodenas/memcached
```

The first time you run your container, a new user `memcached` with all privileges will be created with a random password.
To get the password, check the logs of the container by running:

```
docker logs <CONTAINER_ID>
```

You will see an output like the following:

```
========================================================================
Memcached User: "memcached"
Memcached Password: "VyUXlHIlOG2gSEjX"
========================================================================
```

#### Credentials

If you want to preset credentials instead of a random generated ones, you can set the following environment variables:

* `MEMCACHED_USERNAME` to set a specific username
* `MEMCACHED_PASSWORD` to set a specific password

On this example we will preset our custom username and password:

```
$ docker run -d \
    --name memcached \
    -p 11211:11211 \
    -e MEMCACHED_USERNAME=myusername \
    -e MEMCACHED_PASSWORD=mypassword \
    frodenas/memcached
```

#### Extra arguments

When you run the container, it will start the Memcached without any arguments. If you want to pass any arguments,
just add them to the `run` command:

```
$ docker run -d ---name memcached -p 11211:11211 frodenas/memcached -m 128
```

## Copyright

Copyright (c) 2014 Ferran Rodenas. See [LICENSE](https://github.com/frodenas/docker-memcached/blob/master/LICENSE) for details.
