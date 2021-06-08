FROM node:12-alpine

RUN apk add --no-cache bash jq curl

# install hadolint (Dockerfile linter)
RUN curl -L "https://github.com/hadolint/hadolint/releases/latest/download/hadolint-Linux-x86_64"  -o "hadolint" \
  && chmod +x hadolint \
  && mv hadolint /usr/local/bin/hadolint

# install shellcheck (bash linter)
RUN curl -L "https://github.com/koalaman/shellcheck/releases/download/v0.7.1/shellcheck-v0.7.1.linux.x86_64.tar.xz"  -o "shellcheck.tar.xz" \
  && tar xf shellcheck.tar.xz \
  && mv shellcheck-v0.7.1/shellcheck /usr/local/bin/shellcheck \
  && chmod +x /usr/local/bin/shellcheck \
  && rm -Rf shellcheck*

WORKDIR /usr/app

COPY package.json package.json

COPY yarn.lock yarn.lock

RUN yarn install --frozen-lockfile  && yarn cache clean

COPY . /usr/app
