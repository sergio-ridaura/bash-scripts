# Bash scripts v1.0.0

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

## Scripts

### Google Chrome

Popular web browser developed by Google, known for its speed, user-friendly interface, and extensive range of extensions.

- `chrome/install.sh`: Google Chrome installation.

### cURL

Command-line tool used to transfer data across various protocols, especially HTTP and HTTPS. It is useful for making requests and conducting connectivity tests from the command line.

- `curl/install.sh`: cURL installation.

### Diodon

Clipboard manager for Linux systems that allows copying and pasting multiple text or image items.

- `diodon/install.sh`: Diodon installation.

### Docker

Platform that utilizes containers to develop, ship, and run applications more efficiently, irrespective of the environment they run in.

- `docker/install.sh`: Docker installation.

### Fonts

About operating system text fonts.

- `fonts/macos/install.sh`: Install the main macOS sources on the operating system
- `fonts/windows/install.sh`: Install the main Windows fonts on the operating system.

### Microsoft Edge

Web browser developed by Microsoft, offering a fast browsing experience and integrated with various productivity and security features.

- `edge/install.sh`: Microsoft Edge installation.

### Git

Widely used distributed version control system to track changes in source code files during software development.

- `git/install.sh`: Git installation.
- `git/user/config.sh`: Git User Configuration. `$1` user name, `$2` user email.

### Node.js

JavaScript runtime environment that enables running JavaScript code outside of a browser. It is commonly used for server-side application development.

- `node/install.sh`: Node.js installation.
- `node/update.sh`: Update Node.js.
- `node/version/get.sh`: Get Node.js version.
- `node/version/install.sh`: Install Node.js version. `$1` version.

### Npm

Package manager for Node.js, used to install, share, and manage software package dependencies in Node.js projects.

- `npm/install.sh`: npm installation.

### root

About to superuser privileges in Unix/Linux-based operating systems. When executed as `root`, it grants access and complete control over the system.

- `root/sudo.sh`: If you are root, use sudo.

### script

About to bash scripts or text files that contain a series of instructions that can be executed by the Bash shell

- `scripts/script/path.sh`: Get path of current script when executed.

### Ubuntu

Open-source Linux-based operating system known for its user-friendliness, stability, and a wide user community.

- `ubuntu/update.sh`: Updating and cleaning the Operating System.
- `ubuntu/crash/clean.sh`: Clear crash logs.
- `ubuntu/crash/stop.sh`: Clear crash logs and stop record.
- `ubuntu/laptop/switch-ignore.sh`: Set the laptop to prevent it from going to sleep when you close the lid.
- `ubuntu/restricted_extras/install.sh`: Allows non-free tools in the system.

### Visual Studio Code

Highly customizable source code editor developed by Microsoft, offering support for multiple programming languages, integrated debugging, and a wide range of extensions to enhance developer productivity.

- `vscode/install.sh`: Visual Studio Code installation.

## Author

**Sergio Ridaura**

Full stack developer in **TypeScript** with **Astro.js**, **React.js**, **Node.js** and **MongoDB**.  
Quick development of high-performance applications and websites.

[![Blog](https://sergio-ridaura.vercel.app/images/blog.svg)](https://sergio-ridaura.vercel.app/) &nbsp; [![Email](https://img.shields.io/badge/Email-0078D4?style=for-the-badge&logo=microsoft-outlook&logoColor=white)](mailto:sergio.ridaura@outlook.com) &nbsp; [![GitHub](https://img.shields.io/static/v1?style=for-the-badge&message=GitHub&color=181717&logo=GitHub&logoColor=FFFFFF&label=)](https://github.com/sergio-ridaura) &nbsp; [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sergio-ridaura/)

## MIT License

_Copyright (c) 2024 Sergio Ridaura._  
_<https://sergio-ridaura.vercel.app> - <sergio.ridaura@outlook.com>_

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
