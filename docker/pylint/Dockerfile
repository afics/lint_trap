FROM buildpack-deps:jessie-scm
MAINTAINER LintCI

### Setup User ###
ENV user lint_trap
ENV group linters
ENV homedir /src/

RUN mkdir -p $homedir \
 && groupadd -r $group -g 777 \
 && useradd -u 666 -r -g $group -d $homedir -s /sbin/nologin -c "Docker image user" $user \
 && chown -R $user:$group $homedir

### Setup Linter ###
ENV PYLINT_VERSION 1.3.1-3

RUN apt-get update \
 && apt-get install -y \
    pylint=$PYLINT_VERSION \
 && rm -rf /var/lib/apt/lists/*

### Defaults ###
USER $user
WORKDIR $homedir
