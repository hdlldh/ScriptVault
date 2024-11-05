# Macbook Setup

1. Homebrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
- update all package definitions (formulae) and Homebrew itself:
```
brew update
```
- upgrade everything
```
brew upgrade
```

2. ZSH

```
brew install zsh
```

3. Oh My Zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

4. ZSH Theme: Powerlevel10k
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
- update .zshrc
```
ZSH_THEME="powerlevel10k/powerlevel10k"
```

5. ZSH Plugins

- zsh-syntax-highlighting
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```
- zsh-autosuggestions
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

6. Tmux: multi-window manager
```
brew install tmux
tmux new -s myname
tmux a -t myname
tmux ls
tmux kill-session -t myname
```
- Session
```
s  list sessions
$  name session
```
- Window
```
c  create window
w  list windows
n  next window
p  previous window
f  find window
,  name window
&  kill window
```
- Panes
```
%  vertical split
"  horizontal split
o  swap panes
q  show pane numbers
x  kill pane
+  break pane into window (e.g. to select text by mouse to copy)
-  restore pane from window
⍽  space - toggle between layouts
```

7. SDKMAN
```
curl -s "https://get.sdkman.io" | bash
```
- open a new terminal or run the following in the same shell:
```
source "$HOME/.sdkman/bin/sdkman-init.sh"
```
- install java, scala and spark
```
sdk install java 11.0.18-zulu
sdk install scala 2.12.18
sdk install spark 3.3.1
```
- instal a new version of SDKMAN
```
sdk selfupdate
```
- update candidate metadata
```
sdk update
```

8. Pyenv
```
brew install pyenv
```
- run the following to add the commands to `~/.zshrc`
```
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
```
- install python 3.10.11
```
brew install readline xz
pyenv install 3.10.15
pyenv global 3.10.15
```

9. Pipx
```
brew install pipx
pipx ensurepath
```

10. Poetry
```
pipx install poetry
```
- update Poetry
```
pipx upgrade poetry
```
- create `requirements.txt`
```
jupyterlab~=4.0.8
matplotlib~=3.8.1
numpy~=1.26.2
pandas~=2.1.3
scipy~=1.11.3
scikit-learn~=1.3.2
requests~=2.31.0
statsmodels~=0.14.0
nbdime~=3.2.1
pydantic~=2.9.2
openai~=1.51.2
```
- add dependencies from `requirements.txt`
```
poetry add $(sed 's/#.*//' requirements.txt)
```