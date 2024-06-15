# Bash scripts v24.06.15

_Copyright (c) 2024 [Sergio Ridaura](https://github.com/sergio-ridaura)._

My Bash script collection.

## Description

Collection of my [Bash](https://www.gnu.org/software/bash/) scripts with a tool for managing them.

<p style="display:flex; flex-direction:row; align-items:flex-start; flex-wrap:wrap;">
  <a href="https://www.gnu.org/software/bash/">
    <img style="margin:5px;" src="https://img.shields.io/badge/bash-333333.svg?style=for-the-badge&logo=gnu-bash&logoColor=white" alt="Bash">
</p>

## Install

Clone the project with [Git](https://git-scm.com/).

```code
git clone https://github.com/sergio-ridaura/bash-scripts
```

To use the collection, create a `.env.bash` file at the root of the project and add your environment variables. Use the `.env.bash.default` file as an example.

## Development

Create your new scripts in the `bash` folder. Use the existing scripts as a guide and example for development.

To execute the scripts, they need permissions, for example:

```console
chmod +x bash/ubuntu/update.sh
```

## Execution

Run the script with the required parameters from the terminal. For example, to update the Ubuntu [Ubuntu](https://ubuntu.com/) operating system:

```console
./bash/ubuntu/update.sh
```

You can test or develop the scripts in a secure environment using a [Docker Compose](https://docs.docker.com/compose/) container.

Start the container with [Docker Compose](https://docs.docker.com/compose/).

```code
docker-compose up -d
```

Access the [Ubuntu](https://ubuntu.com/) container:

```code
docker exec -it bash-scripts_node bash
```

## Flags

In the scripts, there are flags to modify the default behavior. For example, if you want to view the script version and not display its complete information:

```console
./bash/ubuntu/update.sh -s -m
```

- `-c` / `--clear`: Clears the screen before executing the script.
- `-h` / `--help`: Displays information and does not execute the script.
- `-m` / `--mute`: Does not display script information on the screen.
- `-n` / `--not`: Answers No to script questions.
- `-q` / `--quiet`: Runs in quiet mode.
- `-s` / `--short`: Short response.
- `-u` / `--sudo`: Runs as sudo user.
- `-v` / `--version`: Displays the script version.
- `-y` / `--yes`: Answers Yes to script questions.

## Export

Copy the `.env.bash`, `.env.bash.default` and `bash/bash-utilities.sh` files an add empty `bash` folder to your repository.

Add your scripts or copy the scripts you consider from this collection to the `bash` folder.

## Author

Full stack developer: TypeScript, AssemblyScript, Astro, React, Tailwind, Node and MySQL.

<p style="display:flex; flex-direction:row; align-items:flex-start; flex-wrap:wrap;">
  <a href="https://www.typescriptlang.org/">
    <img style="margin:5px;" src="https://img.shields.io/badge/TypeScript-0078D4?style=for-the-badge&logo=typescript&logoColor=white" alt="TypeScript">
  </a>
  <a href="https://www.assemblyscript.org/">
    <img style="margin:5px;" src="https://img.shields.io/badge/assemblyscript-0078D4.svg?style=for-the-badge&logo=assemblyscript&logoColor=white" alt="AssemblyScript">
  </a>
  <a href="https://astro.build/">
    <img style="margin:5px;" src="https://img.shields.io/badge/astro-%232C2052.svg?style=for-the-badge&logo=astro&logoColor=white" alt="Astro">
  </a>
  <a href="https://es.react.dev/">
    <img style="margin:5px;" src="https://img.shields.io/badge/react-333333.svg?style=for-the-badge&logo=react&logoColor=white" alt="React">
  </a>
  <a href="https://tailwindcss.com/">
    <img style="margin:5px;" src="https://img.shields.io/badge/tailwind-%2338B2AC.svg?style=for-the-badge&logo=tailwind-css&logoColor=white" alt="Tailwind">
  </a>
  <a href="https://nodejs.org/">
    <img style="margin:5px;" src="https://img.shields.io/badge/node-6DA55F?style=for-the-badge&logo=node.js&logoColor=white" alt="Node">
  </a>
  <a href="https://www.mysql.com/">
    <img style="margin:5px;" src="https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
  </a>
</p>

Fast development of high-performance web applications and sites.

<p style="display:flex; flex-direction:row; align-items:flex-start; flex-wrap:wrap;">
  <a href="mailto:sergio.ridaura@outlook.com">
    <img style="margin:5px;" src="https://img.shields.io/badge/Email-0078D4?style=for-the-badge&logo=microsoft-outlook&logoColor=white" alt="Email">
  </a>
  <a href="https://github.com/sergio-ridaura">
    <img style="margin:5px;" src="https://img.shields.io/static/v1?style=for-the-badge&message=GitHub&color=181717&logo=GitHub&logoColor=FFFFFF&label=" alt="GitHub">
  </a>
  <a href="https://www.linkedin.com/in/sergio-ridaura/">
    <img style="margin:5px;" src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn">
  </a>
</p>

## MIT License

_Copyright (c) 2024 [Sergio Ridaura](https://github.com/sergio-ridaura)._

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
