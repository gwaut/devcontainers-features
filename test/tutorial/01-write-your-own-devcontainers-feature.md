# Write a devcontainer feature

1. You can start with the [https://github.com/devcontainers/feature-starter](https://github.com/devcontainers/feature-starter).
Click on use this template and create a new repository.

2. Create a new folder in src and an equally named folder in test. The folder in src must contain a devcontainer-feature.json file and a install.sh file.
The specification of the devcontainer-feature.json file can be found [here](https://containers.dev/implementors/spec/). The install.sh file will contain the installation instructions.

3. Running tests:
``` bash
$ devcontainer features test --features <feature name>
```