---
title: Visual Studio Code (VS Code) Tips & Tricks
tags: [VSCode, Docker, VisualStudioCode]
style: fill
color: primary
description: Tips & tricks for using Visual Studio Code
---


## VS Code in Docker
VS Code has a very useful feature which allows you to run your code inside a docker container.  It handles starting / mounting your code to a Docker container & seamlessly integrating the termainal / debug features.


You will need to install the [VS Code Remote - Remote Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) plugin.

Once this is installed, the best way to use this plugin is to create a ```.devcontainer/devcontainer.json``` file such as the one below:

```
{
    "name": "Python Dev",
    "image": "python:3",
    "extensions": [
        "ms-python.python"
    ]
}
```

This configures VS Code to use a python 3 docker image with the Python extension installed within the container.  Extensions are installed on start.


When you start VS Code, you will be prompted to "Reopen in Container".  When you select this, the container will be downloaded if not already present on your machine & started.

Instead of starting with public images, you can also build your own docker images & reference them in this config.


References:
+ https://code.visualstudio.com/docs/remote/containers
