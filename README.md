Sometimes you want to bind youl local directory to some docker container to rapildy develop in there.
But there's a catch: if `root` from the container would write something into mounted dir - you will not be able to delete it locally, etc.

But if you create a non-root user inside container?
It will do, but if their UIDs & GIDs will not match, host system will not be rendering username. Also problems with ACL are possible.

I think, if the user inside the image would have same IDs as one on the host system - bind will become pleasant & safer.

This Dockerfile alongside with auxiliary bash script allows you to clone your user inside any (Ubuntu checked) image, so container will be ready to bind your directories.

Anyway, if you would want to adapt this approach to your specific case - it should be easy.

To use this tool, just place the `build-docker-useradd.sh` into directory with build context, adjust it's contents to your needs and launch!

Happy dockering!
