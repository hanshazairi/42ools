# 42ools

`bash`, `gcc`, `gdb`, `make`, `valgrind` & `norminette` packaged into a Docker image to build, debug & detect memory leaks for 42 projects.

```
- bash: GNU bash, version 5.1.8(1)-release (x86_64-alpine-linux-musl)
- gcc: gcc (Alpine 10.3.1_git20211027) 10.3.1 20211027
- gdb: GNU gdb (GDB) 11.1
- make: GNU Make 4.3, Built for x86_64-alpine-linux-musl
- valgrind: valgrind-3.18.1
- python: Python 3.9.7
- norminette: norminette 3.3.51
```

## Usage

Pull latest Docker image from GitHub Container Registry.
```
$ docker pull ghcr.io/hanshazairi/42ools:latest
```
>Alternatively, pull from Docker Hub.
>```
>$ docker pull hanshazairi/42ools:latest
>```

Change directory to project repository, and start a container in _Interactive Mode_ that bind-mounts the `repo` directory into the container at `/tmp`.
```
$ cd path/to/repo
$ docker container run --rm -it -v $PWD:/tmp hanshazairi/42ools
```

Inside the container, change directory to `/tmp`, and run the necessary commands to build & test your project.
```
# cd tmp
# find . -type f \( -name '*.c' -o -name '*.h' \) | xargs norminette
# make
# gdb a.out
# valgrind --leak-check=yes ./a.out
# exit
```
