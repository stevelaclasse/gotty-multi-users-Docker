# gotty-multi-users-Docker
This repository add the credential file support for multiple users basic authentication in the Gotty project (https://github.com/yudai/gotty). 

This credential file support was already implemented in the webkubectl project (https://github.com/KubeOperator/webkubectl) that uses Gotty.

I just moved the changes that were applied in the Webkubectl project (Gotty folder) to the original gotty project and added a Docker file and a Helm Chart. 

The docker image can be download here : `stevelaclasse/gotty-multi-users-docker:latest`

The **SSH** conection to a host server with gotty was implemented in this repository: https://github.com/stevelaclasse/gotty-web-ssh/ .
