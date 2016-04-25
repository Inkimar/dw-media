# dw-media
Dockerized version of the mediaserver, with an nginx <br>
2 keys in have to be added to get the SSL-working ./ , key.pem and combined.pem <br>
put the keys; cert.key and cert.pem in ./nginx-certs/ <br>

## 3 files needs to be added, located inhouse on 'buffalo' right now
There are get-scripts available to fetch those files from 'buffalo' <br>
The three files are the following.

1. the artifact , xxx.ear-file
2. the database-dump, yyyy.sql-file
3. the media-files, zzzz.tgz


# API

## @POST
posting a base64-encoded string, mind the URI ( http://localhost:28080/MediaServerResteasy/media ) <br>

*request* <br>
curl -v -H "Accept: application/json" -H "Content-type: application/json" -X POST -d  '{"owner":"dina","access":"public","licenseType":"CC BY","legend":"this is chess","fileName":"chess.png","fileDataBase64":"iVBORw0KGgoAAAANSUhEUgAAAAIAAAACAQMAAABIeJ9nAAAABlBMVEUAAAD///+l2Z/dAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AQZCR0TdgIZugAAABl0RVh0Q29tbWVudABDcmVhdGVkIHdpdGggR0lNUFeBDhcAAAAMSURBVAjXY3BgaAAAAUQAwetZAwkAAAAASUVORK5CYII="}' http://localhost:28080/MediaServerResteasy/media  <br>

*response, - random uuid* <br>
{"uuid":"f3959214-fcb2-451a-a0cb-dcd8457d2c83","owner":"dina","visibility":"public","filename":"chess.png","mimetype":"image/png","mediaURL":"127.0.0.1/MediaServerResteasy/media/f3959214-fcb2-451a-a0cb-dcd8457d2c83?format=image/png","taggar":null,"alt":null,"hash":"0782dd0a2fef7bf7e08bd68978e63e27","description":[{"uuid":null,"legend":"this is chess","lang":"sv_SE","comment":""}],"lico":[{"id":1,"abbrev":"CC BY","version":"3.0","issuer":"http://creativecommons.org/licenses/by/","uri":"Attribution","name":"Creative Commons"}],"isExported":false,"exif":"N/A"} <br>

## @GET

## @PUT

## @DELETE


