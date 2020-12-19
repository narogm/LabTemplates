FROM lab-base

RUN apt-get update && apt-get install -y r-base libxkbcommon-x11-0 libclang-dev

WORKDIR /tmp
RUN wget -O rstudio.deb https://download1.rstudio.org/desktop/bionic/amd64/rstudio-1.3.1093-amd64.deb \
       && dpkg -i rstudio.deb

