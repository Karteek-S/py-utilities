# py-utilities

This repository hosts a collection of utilities for my Python projects. This repository provides re-usable assets to be included as `utils` submodule.
It may be used for initializing, venv, and deployment automations with a `Taskfile` which eases the work.

## Installation

### Local Requirements

- Python 3.11+
- [task](https://taskfile.dev/) (>= v3.29) for running build tasks (make sure to follow the installation instructions to avoid confusion with taskwarrior)

#### Clone as project

```shell-session
git clone git@github.com:Karteek-S/py-utilities.git
```

### Initialize as a Submodule

#### add submodule `utils`

```shell-session
git submodule add -b main git@github.com:Karteek-S/py-utilities.git utils
```

#### initialize and update

```shell-session
git submodule init
git submodule update
```

#### usage

###### Extend (namespaces `utils:`)
You need to extend this task list in submodule `utils` by creating a file `TaskfileCustom.yaml` in your repository root:

```shell-session
$ cat TaskfileCustom.yaml
---
version: '3'

includes:
  utils:
    taskfile: ./utils/Taskfile.yaml
    vars:
      PYTHON_VERSION: '3.10.11'  # project-specific version
    aliases: [u]
```

namespaces `utils:` | `u:`
customize `aliases` as you prefer