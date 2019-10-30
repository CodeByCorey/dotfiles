# bash-setup

I am forever moving from computer to computer and I wanted my aliases and shortcuts for each computer.
This made me create a nice repository where I can slowly add all of my dot files.
It has driven me to learn more bash scripting and I hope I can keep improving my script skills while I develop this further.

I then decided to create scripts that will allow other people to use my dotfiles if people decide they like them.

The install script will backup any of the files the project will overwrite. They can be restored using the one of the bellow commands.

## Install

#### Commands:
Install Dots Application and bash files:
```
curl -o- https://raw.githubusercontent.com/rcodonnell/dotfiles/master/install.sh | bash
```
Current install location is located in `${HOME}/apps/dotfiles`

Once dotfiles is installed, you can install bash files using
```
~/apps/dotfiles/dotfiles bash
```
This will remove your current dotfiles if there are file collision.
Todo: Add backup of old dotfiles before replacing/deleting.
