Dockerfiles
===========

This is just a place for me to put my template/generic dockerfiles.

Please install the git submodules with `git submodule init && git submodule update`

Tips:
- You might find it useful using nginx (or anything) on the host as
  a frontend for all web apps. This is because some web apps are
  sensitive and assume they are on port 80. You could use nginx
  to determine the domain name and forward to the proper port.
