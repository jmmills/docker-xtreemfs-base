#!/bin/bash

CLASSPATH=/usr/share/java/XtreemFS.jar:/usr/share/java/BabuDB.jar:/usr/share/java/Flease.jar:/usr/share/java/protobuf-java-2.5.0.jar:/usr/share/java/Foundation.jar:/usr/share/java/jdmkrt.jar:/usr/share/java/jdmktk.jar:/usr/share/java/commons-codec-1.3.jar
perl -pi /fix_dir_host_config.pl $2
grep dir_service.host $2
grep dir_service.port $2
/usr/bin/java -ea -cp $CLASSPATH $1 $2

