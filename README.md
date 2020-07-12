# Jupyterhub with Pyspark & Admin-panel

 - Integrated Pyspark
 - Integrated Admin-panel
 - Added admin-user
 - By-defaul admin-user can create system users
 - Admin user can be setup by environment-variable durring the container start
 - Root-user password can be modified by ROOTPASSWD env variable
 - Default ROOT passwd if "jumbo"
 - Created new image with spark, scala, pyspark


## How can i use it:
- `docker pull amiryus/jupyspark `
- `docker run -d --name my-jupyspark-name  -p 8000:8000 amiryus/jupyspark`
- Open in your browser this URL: http://<machine-host-ip/dns>:8000
- Default admin-username: `amiryus` password: `jumbo`

## How can i setup my own admin-user/password:
- `docker run -d --name my-jupyspark-name  -p 8000:8000 -p 222:22 -e ADMUSER=my_user -e ADMPASS=my_password -e ROOTPASSWD=my__root_password amiryus/jupyspark`

## What if i need to store data on my host-machine:
- In this image data stored in default users folders in "/home" directory, so you just need the command below.

- `docker run -d --name my-jupyspark-name -v /host/machine/dir:/home -p 8000:8000 amiryus/jupyspark`
