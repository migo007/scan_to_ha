# A Home Assistant Add-on that allows to scan directly from a hp scanner to ha

This plugin is just a (simple) wrapper for the docker container from: https://github.com/manuc66/node-hp-scan-to

The configuration options: 

### target: 
Required
Default: /share/paperless/consume<br>
Where scanned documents will be stored.<br> 
Could be on /media or /share. Could also bet the consume directory of a paperless-ngx (/share/paperless/consume) add-on.

### ip: 192.168.1.1
Required<br>
Default: 192.168.1.1<br>
The IP of the printer.

### pattern: <br>
Required <br>
Default: "scan_"dd.mm.yyyy_hh:MM:ss<br>
The pattern uses for the files.

## Highly related repos
https://github.com/manuc66/node-hp-scan-to <br>
https://github.com/tux2000/home-assistant-addons/tree/master/paperless-ngx <br>
https://github.com/TheBestMoshe/home-assistant-addons/tree/master/paperless-ngx <br>