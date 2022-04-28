# Start Spring boot project with kotlin
If you configure the development space with vscode's devcontainer, you minimize the difference in environment between development and deployment.
And it makes it easy to share your environment with your team mates. Therfore, I have organized the code so that you can start a web project with a combination of spring boot, kotlin, and gradle on vscode's devcontainer.

## Prerequisites
- Docker 20.10.12
- docker compose 1.29.2
- VScode (for devcontainer)
  - Remote - Containers Extension(ms-vscode-remote.remote-containers)
  - Docker Extension(ms-azuretools.vscode-docker)

## Docker images version
- gradle:7-jdk11
- openjdk:11

## Start

### 1. Git Clone
```console
// clone source code
> git clone https://github.com/deagwon97/start-kotlin-spring-boot.git
```

### 2. download spring boot codes from https://start.spring.io/
1. Choose Like this and download zip file
    - Grandle Project
    - Kotlin
    - Spring Boot 2.6.7
    - Packaging Jar
    - Java 11
2. Unzip codes and move to `~/workdir/src/src`

### 2. Run Devcontainer
1. Open command palette
2. select "> remote-containers: open Folder in container.."
3. select "start-kotlin-spring-boot" directory

### 3. Development

If you want to run grandlew on CLI, to type this.

```console
# cd ~/workdir/src/
# ./grandlew bootRun
```

Or, if you want to use gradle extention debugger, do this.
1. click GADLE plugin on left side bar.
2. click Tasks > application > bootRun

but, you have to do run console `./grandlew bootRun` first once.


## Build

```
docker run build .
```