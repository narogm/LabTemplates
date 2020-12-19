FROM ubuntu:18.04

#setup user
RUN echo "root:root" | chpasswd

#setup ssh
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
# SSH login fix. Otherwise user is kicked off after login
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile
EXPOSE 22

#deps
RUN apt-get update && apt-get install -y apt-transport-https

#setup gui and xrdp
ENV DEBIAN_FRONTEND noninteractive
WORKDIR /scripts
COPY *.sh ./
RUN chmod +x *.sh
RUN ./bootstrap_gui.sh
RUN apt-get update && apt-get install -y supervisor locales
ADD etc /etc


RUN sed -i '/TerminalServerUsers/d' /etc/xrdp/sesman.ini && \
    sed -i '/TerminalServerAdmins/d' /etc/xrdp/sesman.ini

RUN echo "xfce4-session" > /etc/skel/.Xclients

CMD ["supervisord", "-n"]

RUN apt-get update && apt-get install -y gedit evince
