FROM ubuntu:latest
MAINTAINER = Jason M. Mills <jmmills@cpan.org>
ENV DEBIAN_FRONTEND noninteractive
RUN echo 'deb http://download.opensuse.org/repositories/home:/xtreemfs/xUbuntu_14.04/ ./' >>/etc/apt/sources.list
ADD http://download.opensuse.org/repositories/home:/xtreemfs/xUbuntu_13.10/Release.key /
RUN apt-key add /Release.key
RUN apt-get update
RUN apt-get install -y xtreemfs-server xtreemfs-client

ENTRYPOINT ["/usr/bin/java", "-ea", "-cp", "/usr/share/java/XtreemFS.jar:/usr/share/java/BabuDB.jar:/usr/share/java/Flease.jar:/usr/share/java/protobuf-java-2.5.0.jar:/usr/share/java/Foundation.jar:/usr/share/java/jdmkrt.jar:/usr/share/java/jdmktk.jar:/usr/share/java/commons-codec-1.3.jar"]
