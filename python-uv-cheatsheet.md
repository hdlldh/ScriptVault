# UV CLI Cheatsheet

## Installation
```sh
curl -LsSf https://astral.sh/uv/install.sh | sh
```

## Common Commands

### Initialize a New Project
```sh
uv init
```
Creates a new Python project in the current directory.

### Add Dependencies to the Project
```sh
uv add <package_name>
```
Installs the specified package and adds it to the project's dependencies.

### Remove Dependencies from the Project
```sh
uv remove <package_name>
```
Uninstalls the specified package and removes it from the project's dependencies.

### Synchronize Project Environment
```sh
uv sync
```
Ensures the project's environment matches the defined dependencies.

### Update the Lockfile
```sh
uv lock
```
Regenerates the project's lockfile based on current dependencies.

### Export Lockfile
```sh
uv export
```
Exports the lockfile to another format, such as `requirements.txt`.

### Display Dependency Tree
```sh
uv tree
```
Shows a hierarchical view of the project's dependencies.

### Run Commands in Project Environment
```sh
uv run <command>
```
Executes the specified command within the project's environment.

### Manage Python Versions
```sh
uv python <subcommand>
```
Handles Python installations and versions.

### Manage Virtual Environments
```sh
uv venv <subcommand>
```
Creates and manages virtual environments.

### Build Distributions
```sh
uv build
```
Builds source distributions and wheels for the project.

### Publish Distributions
```sh
uv publish
```
Uploads distributions to a package index.

### Manage Cache
```sh
uv cache <subcommand>
```
Handles `uv`'s cache, including cleaning and pruning.

### Update `uv` Executable
```sh
uv self update
```
Updates the `uv` executable to the latest version.

### Display Version Information
```sh
uv version
```

### Linting, Sorting Imports and Formating
```
uvx ruff check --select I --fix
uvx ruff format
```
