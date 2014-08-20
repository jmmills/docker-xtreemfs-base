FROM ubuntu:latest
MAINTAINER = Jason M. Mills <jmmills@cpan.org>
ENV DEBIAN_FRONTEND noninteractive
RUN echo 'deb http://download.opensuse.org/repositories/home:/xtreemfs/xUbuntu_14.04/ ./' >>/etc/apt/sources.list
ADD http://download.opensuse.org/repositories/home:/xtreemfs/xUbuntu_13.10/Release.key /
RUN apt-key add /Release.key
RUN apt-get update
RUN apt-get install -y xtreemfs-server xtreemfs-client
ADD entrypoint.sh /
ADD fix_dir_host_config.pl /

ENTRYPOINT ["/entrypoint.sh"]
CMD ["--version"]
