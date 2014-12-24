dynamic-publish
===============

Allows to publish a running container's port to the host.

The container exposes the chosen port of the target container on port 1234. When running this container, we can then publish port 1234 on the host.

Usage
-----

This container requires a link named `target` and the target port to expose in the `PORT` environment variable.

    docker run -it --rm -p 8888:1234 -e PORT=8161 --link othercontainer:target cedricfinance/dynamic-publish

This will publish the port `8161` of `othercontainer` on port  8888 of the host.
