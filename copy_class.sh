#!/bin/bash
# copy the Java classes on which this package is based on 
# to the inst directory
for file in "JavaMailer.class" "JavaMailSender.class" "JavaMailer$Attachment.class"  "JavaMailReceiver.class"  
do
    cp /dropbox/code/java/jmail/bin/dclong/net/$file dclong.jmail/inst/java/dclong/net/
done
