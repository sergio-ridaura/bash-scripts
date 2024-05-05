# Bash scripts v1.0.0

_Copyright (c) 2024 [Sergio Ridaura](https://github.com/sergio-ridaura)._

My Bash script collection.

## Description

Collection of my [Bash](https://www.gnu.org/software/bash/) scripts with a tool for managing them.

[![Bash](https://img.shields.io/badge/bash-333333.svg?style=for-the-badge&logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)

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

- `-c` : Clears the screen before executing the script.
- `-i` : Displays information and does not execute the script.
- `-m` : Does not display script information on the screen.
- `-n` : Answers No to script questions.
- `-q` : Runs in quiet mode.
- `-s` : Short response.
- `-u` : Runs as sudo user.
- `-v` : Displays the script version.
- `-y` : Answers Yes to script questions.

## Export

Add an empty `bash` folder to your repository and copy the `.env.bash`, `.env.bash.default` and `bash/bash-utilities.sh` files.

Add your scripts or copy the scripts you consider from this collection to the `bash` folder.

## Author

Full stack developer: [TypeScript](https://www.typescriptlang.org/), [AssemblyScript](https://www.assemblyscript.org/), [Astro](https://astro.build/), [React.js](https://es.react.dev/), [Tailwind CSS](https://tailwindcss.com/), [Node.js](https://nodejs.org/) and [MySQL](https://www.mysql.com/).

[![TypeScript](https://img.shields.io/badge/TypeScript-0078D4?style=for-the-badge&logo=typescript&logoColor=white)](https://www.typescriptlang.org/) &nbsp; [![AssemblyScript](https://img.shields.io/badge/assemblyscript-0078D4.svg?style=for-the-badge&logo=assemblyscript&logoColor=white)](https://www.assemblyscript.org/) &nbsp; [![Astro](https://img.shields.io/badge/astro-%232C2052.svg?style=for-the-badge&logo=astro&logoColor=white)](https://astro.build/) &nbsp; [![React](https://img.shields.io/badge/react-333333.svg?style=for-the-badge&logo=react&logoColor=white)](https://es.react.dev/) &nbsp; [![Tailwind](https://img.shields.io/badge/tailwind-%2338B2AC.svg?style=for-the-badge&logo=tailwind-css&logoColor=white)](https://tailwindcss.com/) &nbsp; [![Node](https://img.shields.io/badge/node-6DA55F?style=for-the-badge&logo=node.js&logoColor=white)](https://nodejs.org/) &nbsp; [![MySQL](https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white)](https://www.mysql.com/)

Fast development of high-performance web applications and sites.

[![Email](https://img.shields.io/badge/Email-0078D4?style=for-the-badge&logo=microsoft-outlook&logoColor=white)](mailto:sergio.ridaura@outlook.com) &nbsp; [![GitHub](https://img.shields.io/static/v1?style=for-the-badge&message=GitHub&color=181717&logo=GitHub&logoColor=FFFFFF&label=)](https://github.com/sergio-ridaura) &nbsp; [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/sergio-ridaura/)

## MIT License

_Copyright (c) 2024 [Sergio Ridaura](https://github.com/sergio-ridaura)._

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
