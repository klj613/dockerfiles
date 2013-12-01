Symfony2 nginx + php5-fpm
=========================

This is used as a template to be customised per-project.

Example usage:

Add the Dockerfile (and supervisor/vhost files) to the project.

[Set up permissions on the host's project directory](../host_app_permissions.md)

```
IMAGE_ID=$(sudo docker build . | tail -n 1 | awk '{print $3}')
CONTAINER_ID=$(sudo docker run -d -v `pwd`:/var/www $IMAGE_ID)
echo $(sudo docker ps | grep -i ^$CONTAINER_ID)
```
