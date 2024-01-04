# Bash scripts v1.1.0

_Copyright (c) 2024 Sergio Ridaura._  
_<https://sergio-ridaura.vercel.app> - <sergio.ridaura@outlook.com>_

## Description

My collection of **Bash** scripts that I use in my projects.

By default the scripts are designed to be used on an Ubuntu operating system.

[![Bash](https://img.shields.io/static/v1?style=for-the-badge&message=GNU+Bash&color=4EAA25&logo=GNU+Bash&logoColor=FFFFFF&label=)](https://sergio-ridaura.vercel.app/blog/bash)

## Ejecución

The scripts are located in the `scripts` folder. Run the script with the required parameters from the terminal. For example, to update the Ubuntu operating system:

```shell
./scripts/ubuntu/update.sh
```

In each of the folders there are guides to know more about the created scripts and the application or matter treated.

## Scripts

### [Blender](https://www.blender.org/)

A 3D creation suite for 3D rendering, modeling, sculpting, animation and more.

- `blender/install.sh`: Blender installation.
- `blender/uninstall.sh`: Blender uninstall.

### [CDRTools](https://codeberg.org/schilytools/schilytools/)

Command-line utilities for working with optical discs, for creating, copying, and manipulating CD, DVD, and Blu-ray data.

- `cdrtools/install.sh`: CDRTools installation.
- `cdrtools/uninstall.sh`: CDRTools uninstall.

### [Google Chrome](https://www.google.com/intl/es_es/chrome/)

Popular web browser developed by Google, known for its speed, user-friendly interface, and extensive range of extensions.

- `chrome/install.sh`: Google Chrome installation.
- `chrome/uninstall.sh`: Google Chrome uninstall.

### [cURL](https://curl.se/)

Command-line tool used to transfer data across various protocols, especially HTTP and HTTPS. It is useful for making requests and conducting connectivity tests from the command line.

- `curl/install.sh`: cURL installation.
- `curl/uninstall.sh`: cURL uninstall.

### [Diodon](https://launchpad.net/diodon/)

Clipboard manager for Linux systems that allows copying and pasting multiple text or image items.

- `diodon/install.sh`: Diodon installation.
- `diodon/uninstall.sh`: Diodon uninstall.

### [Docker](https://www.docker.com/)

Platform that utilizes containers to develop, ship, and run applications more efficiently, irrespective of the environment they run in.

- `docker/install.sh`: Docker installation.
- `docker/compose/install.sh`: Docker Compose installation.

### [Microsoft Edge](https://www.microsoft.com/es-es/edge/)

Web browser developed by Microsoft, offering a fast browsing experience and integrated with various productivity and security features.

- `edge/install.sh`: Microsoft Edge installation.
- `edge/uninstall.sh`: Microsoft Edge uninstall.

### [Fail2ban](http://www.fail2ban.org/)

The application helps the prevention of intruders in the system, penalizing or blocking remote connection that attempt by brute force.

- `fail2ban/install.sh`: Fail2ban installation.
- `fail2ban/uninstall.sh`: Fail2ban uninstall.

### Fonts

About operating system text fonts.

- `fonts/macos/install.sh`: Install the main macOS sources on the operating system
- `fonts/windows/install.sh`: Install the main Windows fonts on the operating system.

### [Gimp](https://www.gimp.org/)

Program dedicated to photographic retouching and graphics creation.

- `gimp/install.sh`: Gimp installation.
- `gimp/uninstall.sh`: Gimp uninstall.

### [Git](https://git-scm.com/)

Widely used distributed version control system to track changes in source code files during software development.

- `git/install.sh`: Git installation.
- `git/user/config.sh`: Git User Configuration. `$1` user name, `$2` user email.

### [Inkscape](https://inkscape.org/)

Program dedicated to the creation and editing of vector graphics.

- `inkscape/install.sh`: Inkscape installation.
- `inkscape/uninstall.sh`: Inkscape uninstall.

### [Node.js](https://nodejs.org/)

JavaScript runtime environment that enables running JavaScript code outside of a browser. It is commonly used for server-side application development.

- `node/install.sh`: Node.js installation.
- `node/update.sh`: Update Node.js.
- `node/version/get.sh`: Get Node.js version.
- `node/version/install.sh`: Install Node.js version. `$1` version.

### [Npm](https://www.npmjs.com/)

Package manager for Node.js, used to install, share, and manage software package dependencies in Node.js projects.

- `npm/install.sh`: npm installation.

### [OBS Studio](https://obsproject.com/)

Open source program used for recording and live streaming of multimedia content. It is a popular tool among online content creators, especially those involved in streaming video games, live streaming events, creating tutorials, podcasts, and more.

- `obs-studio/install.sh`: OBS Studio installation.
- `obs-studio/uninstall.sh`: OBS Studio uninstall.

### [qBittorrent](https://www.qbittorrent.org/)

Open source, cross-platform BitTorrent client. BitTorrent is a peer-to-peer (P2P) file transfer protocol used to download and share large files efficiently.

- `qbittorrent/install.sh`: qBittorrent installation.
- `qbittorrent/uninstall.sh`: qBittorrent uninstall.

### [RAR](https://www.rarlab.com/)

Archive format used to compress and package data.

- `rar/install.sh`: RAR installation.
- `rar/uninstall.sh`: RAR uninstall.

### root

About to superuser privileges in Unix/Linux-based operating systems. When executed as `root`, it grants access and complete control over the system.

- `root/sudo.sh`: If you are root, use sudo.

### script

About to bash scripts or text files that contain a series of instructions that can be executed by the Bash shell

- `scripts/script/path.sh`: Get path of current script when executed.

### [SSH](https://www.openssh.com/)

A secure networking protocol that allows remote access to computer systems and secure data transfer. OpenSSH provides tools and services to establish encrypted and authenticated connections between computers on a network.

- `ssh/install.sh`: OpenSSH installation.
- `ssh/uninstall.sh`: OpenSSH uninstall.

### [Ubuntu](https://www.ubuntu.com/)

Open-source Linux-based operating system known for its user-friendliness, stability, and a wide user community.

- `ubuntu/update.sh`: Updating and cleaning the Operating System.
- `ubuntu/crash/clean.sh`: Clear crash logs.
- `ubuntu/crash/stop.sh`: Clear crash logs and stop record.
- `ubuntu/laptop/switch-ignore.sh`: Set the laptop to prevent it from going to sleep when you close the lid.
- `ubuntu/restricted_extras/install.sh`: Allows non-free tools in the system.

### [Vim](http://www.vim.org/)

Open source, highly configurable text editor. Its name is an acronym for Vi Improved, referring to its relationship to the Vi text editor, which was originally developed in the 1970s.

- `vim/install.sh`: Vim installation.
- `vim/uninstall.sh`: Vim uninstall.

### [VLC](https://www.videolan.org/vlc/)

Open source, cross-platform media player. The full name of VLC is VLC media player and it is developed by the non-profit organization VideoLAN.

- `vlc/install.sh`: VLC installation.
- `vlc/uninstall.sh`: VLC uninstall.

### [Visual Studio Code](https://code.visualstudio.com/)

Highly customizable source code editor developed by Microsoft, offering support for multiple programming languages, integrated debugging, and a wide range of extensions to enhance developer productivity.

- `vscode/install.sh`: Visual Studio Code installation.
- `vscode/uninstall.sh`: Visual Studio Code uninstall.

### [Zip](https://en.wikipedia.org/wiki/Zip)

Command line utility used to compress files and directories into a ZIP archive.

- `zip/install.sh`: Zip installation.
- `zip/uninstall.sh`: Zip uninstall.

## Author

### Sergio Ridaura

Full stack developer in **TypeScript** with **Astro.js**, **Next.js**, **React.js**, **Node.js** and **MongoDB**.  
Quick development of high-performance applications and websites.

[![Blog](https://sergio-ridaura.vercel.app/images/blog.svg)](https://sergio-ridaura.vercel.app/) &nbsp; [![Email](https://img.shields.io/badge/Email-0078D4?style=for-the-badge&logo=microsoft-outlook&logoColor=white)](mailto:sergio.ridaura@outlook.com) &nbsp; [![GitHub](https://img.shields.io/static/v1?style=for-the-badge&message=GitHub&color=181717&logo=GitHub&logoColor=FFFFFF&label=)](https://github.com/sergio-ridaura) &nbsp; [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sergio-ridaura/)

## MIT License

_Copyright (c) 2024 Sergio Ridaura._  
_<https://sergio-ridaura.vercel.app> - <sergio.ridaura@outlook.com>_

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
