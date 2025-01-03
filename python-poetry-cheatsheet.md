#### Create a new project
```bash
poetry new <project-name>
```
#### Add a new lib
```bash
poetry add <library>
```
#### Remove a lib
```bash
poetry remove <library>
```
#### Update a lib
```bash
poetry update <library>
```
#### Get venv path
```bash
poetry run which python
```
#### Run app
```bash
poetry run python app.py
```
#### Run tests
```bash
poetry run python -m unittest discover
```
#### Show dependencies
```bash
poetry show
```
#### Set global python version
```bash
pyenv install 3.10.15
pyenv global 3.10.15  # Activate Python 3.10 for the current project
```
#### Set local python version
```bash
pyenv install 3.10.15
pyenv local 3.10.15  # Activate Python 3.10 for the current project
poetry install
```
#### Create script
1 - Edit `pyproject.toml`:
```toml
[tool.poetry.scripts]
test = 'scripts:test'
```
2 - Create a `scripts.py` file on the root directory of your project:
```python
import subprocess

def test():
    """
    Run all unittests. Equivalent to:
    `poetry run python -u -m unittest discover`
    """
    subprocess.run(
        ['python', '-u', '-m', 'unittest', 'discover']
    )
```
3 - Run script:
```bash
poetry run test
```

#### Disable virtual environment creation
```bash
poetry config virtualenvs.create false
```

#### List configuratiom
```bash
poetry config --list
```

