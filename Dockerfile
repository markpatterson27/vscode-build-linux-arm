FROM arm64v8/ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

# # install tzdata
# RUN apt-get update \
#   && apt-get install -y tzdata \
# #   && ln -fs /usr/share/zoneinfo/Europe/London /etc/localtime \
# #   && dpkg-reconfigure --frontend noninteractive tzdata \
#   && apt-get clean && rm -rf /var/lib/apt/lists/*

# install nodejs
RUN apt-get update \
  && apt-get install -y git cmake build-essential curl libcurl4-openssl-dev \
  libssl-dev uuid-dev pkg-config nano gcc g++ make \
  && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
  && apt-get install -y nodejs \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

# install yarn
RUN curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update && apt-get install -y yarn \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

# install vscode build dependancies
RUN apt-get update \
  && apt-get install -y libx11-dev libxkbfile-dev libsecret-1-dev fakeroot \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN addgroup --gid 116 contdock

RUN adduser --disabled-password --gecos "" --force-badname --gid 116 --uid 1001 contuser 
# USER contuser