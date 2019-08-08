docker stop portainer
docker rm portainer
# docker rmi portainer
docker run -d \
	--name="portainer" \
	--restart=unless-stopped \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-p 9900:9000 \
	portainer/portainer