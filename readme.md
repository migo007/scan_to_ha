# A Home Assistant Addon that allows to scan directly from a hp scanner to ha

This plugin is just a wrapper for the docker container from: https://github.com/manuc66/node-hp-scan-to

The configuration options: 

target: /share/paperless/consume
Required
Where scanned documents will be stored. 
Could be on /media or /share. Could also the consume directory of a paperless-ngx (/share/paperless/consume) add-on.

ip: 192.168.1.1
Required
The IP of the printer.

pattern
Required
The pattern uses for the files.