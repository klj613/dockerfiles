Phalcon
=======

First time using phalcon and wanted to try it out.

Dependencies
------------

1. klj613:centos6 (contained in ./centos6/base of this git repo)

Building the container
----------------------

1. Put your phalcon app in ./app
2. Ensure ./phalcon contains the phalcon C source code (currently a
   git submodule)
3. `./build` (you may have to sudo)

Development containers
----------------------

When I develop on containers I bind mount the hosts app directory to the
development container. Normally I do it with shell access.

Please make sure nginx has permission to /srv/www (chown). Normally
I do this when I run the container with shell access. You can chown
it on the host as well however got to know the UID. This would cause
host permission issues (e.g. IDEs) which I haven't figured out yet.
777 would probably fix these issues :P I use vim so I'm okay! :)

### Running the container (with shell access)

```
docker run -i -t -v `pwd`/app:/srv/www -P klj613:centos6_phalcon /bin/bash

chown nginx:nginx /srv/www -R

supervisord
```

### Running the container (without shell access)

```
# ensure nginx has permissions

docker run -d -v `pwd`/app:/srv/www -P klj613:centos6_phalcon
```

Readonly containers (prod / stage / QA / etc)
---------------------------------------------

```
docker run -d -P klj613:centos6_phalcon
```

Getting port 80 of the containers
---------------------------------

You can view the app in the browser using the random port with localhost

```
docker port CONTAINER_ID 80
```
