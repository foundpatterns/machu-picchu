<p align="center"><img width="160" src="https://i.imgur.com/sbDmxz1.png" alt="machu-picchu logo"><br>This Project is Currently in Stealth Mode.<br>please do not post a news story until v0.1 is released very shortly.<br>thank you.</p>

Machu Picchu is a general-purpose package manager

## Installation
Use [mp-installer](https://github.com/foundpatterns/mp-installer) to install or see [torchbear](https://github.com/foundpatterns/torchbear) for instructions in general.

If you want to do it manually clone this repository and then create 
a symlink to `init.lua` file.

```bash
$ ln -s ~/bin/mp <location-to-cloned-repo>/init.lua
```

## Usage
```bash
$ mp
usage: mp unpack
usage: mp upgrade
usage: mp refresh
usage: mp install <package-name>
usage: mp search <package-name>
usage: mp uninstall <package-name>
usage: mp [help]
```

To install an app first you will have to refresh/download the 
repository. Use `mp refresh` to refresh it.

To install:
```bash
mp install <app-name>
```
To uninstall:
```bash
mp uninstall <app-name>
```

To fix dependencies of any manually cloned torchbear app:
```bash
mp unpack
```

To update the dependencies:
```bash
mp upgrade
```
