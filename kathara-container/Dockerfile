FROM lab-base

# Let's start with some basic stuff.
RUN apt-get update -qq && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables

# Install Docker from Docker Inc. repositories.
RUN curl -sSL https://get.docker.com/ | sh

ENV DEBIAN_FRONTEND noninteractive
WORKDIR /scripts
COPY *.sh ./
RUN chmod +x *.sh
RUN ./bootstrap_kathara.sh

# Install the magic wrapper.
ADD ./wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker

# Kathara files
RUN apt-get update && apt-get install -y git zip gedit
RUN git clone https://github.com/KatharaFramework/Kathara-Labs /home/kathara-labs

VOLUME /var/lib/docker
ADD etc /etc
