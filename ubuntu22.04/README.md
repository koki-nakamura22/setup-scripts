# Ubuntu22.04
## Install all libraries and tools
```sh
sh execute-all.sh
```

## Install library or tool individually
```sh
sh execute [individual script]
```

e.g. Install Docker
```sh
sh execute install-docker.sh
```

## Install programming language or library by *env
### Python
Checking any versions we can install
```sh
pyenv install --list
```

Install
```sh
pyenv install [version]

# e.g. 
pyenv install 3.10.4
```

Setting
```sh
pyenv global [version]
pyenv local [version]

# e.g.
pyenv global 3.10.4
```

### Node
Checking any versions we can install
```sh
nodenv install --list
```

Install
```sh
nodenv install [version]

# e.g.
nodenv install 18.1.0
```

Setting
```sh
nodenv global [version]
nodenv local [version]

# e.g.
nodenv global 18.1.0
```

## Other
### Setting a ssh config file permission
```sh
chmod 600 [ssh config file path]

# e.g.
chmod 600 ~/.ssh/id_rsa_github
```
