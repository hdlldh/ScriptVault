# UV Cheatsheet
### Install UV
```
brew install uv
```
### Create a new project
```
uv init explore-uv
```
### Add dependencies to the project
```
uv add `dependency_name`
```
### Remove dependencies from the project
```
uv remove `dependency_name`
```
### Update the project’s environment
```
uv sync
```
### Update the project’s lockfile
```
uv lock
```
### Export the project’s lockfile to an alternate format
```
uv export
```
### Display the project’s dependency tree
```
uv tree
```
### Run and install commands provided by Python packages
```
uv tool
```
### Manage Python versions and installations
```
uv python
```
### Build Python packages into source distributions and wheels
```
uv build
```
### Upload distributions to an index
```
uv publish
```
### Manage uv’s cache
```
uv cache
```