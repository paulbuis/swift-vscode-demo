# swift-vscode-demo

An example project using Visual Studio to edit Swift code

Note the `[devcontainer.json](.devcontainer/devcontainer.json) in the `.devcontainer` directory
has the important magical bits:
* An image field referring to [my Docker Hub repository image](https://hub.docker.com/repository/docker/paulbuis/swift-vscode-remote-container-docker) for doing Swift with the [Remote - Containers extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) installed. 
* The messy details of the arguments to `docker run` that are needed to allow the `swift` interpreter to work.

Most of this was lifted directly from Ian Partridge's [vscode-remote-try-swift](https://github.com/ianpartridge/vscode-remote-try-swift), with the primary exception of using an image reference for the devcontainer rather than a local Dockerfile: I wanted to be sure everyone in my class has the exact same image rather than one's built at different times from perhaps different versions of the base container.

I'm pretty sure the stuff in the `.vscode` directory is messed up, both the `tasks.json` and `launch.json` files are not doing anything useful for me.