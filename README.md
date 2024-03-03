# dotfiles

Repository for my dotfiles.

## Installation

You need to clone the repository at your home directory and run the `install.sh` script.

```bash
git clone git@github.com:AngelCruzL/.dotfiles.git
```

Then you need to run the install script

```bash
./.dotfiles/install.sh
```

Now the install script will create the necessary symlinks from the dotfiles to your home directory. If you want to add more settings or modify the current ones, you can do it directly on the dotfiles directory, and the changes will be reflected on your home directory.

By default the dotfiles has some setup scripts to start with the following tools:

- git: It will start with **my** git configuration, if you want to add yours, you can modify the `.gitconfig` file.
- homebrew: It will install homebrew if it's not installed yet, and it will install the packages listed on the `Brewfile`.
- node: Using [fnm](https://github.com/Schniz/fnm) it will install the latest node version and set it as the default one.
- ssh: It will create some ssh keys and wil associate them with the Host defined on the `config/ssh/config` file.
