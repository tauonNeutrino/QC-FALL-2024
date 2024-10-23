Instructions to set up Jupyter in a Docker container:

- Install Docker and docker-compose
- Clone the repository and open a terminal inside the newly-created directory
- Create a file named `.env` with the line `TOKEN=` followed by your DWave token
- Run `docker compose up` to start the container
- Go to `http://127.0.0.1:8888/lab` to access Jupyter

The container mounts the local repository to a directory called "work". Any changes to this directory will be reflected on your local computer and will persist through restarts of the container. Anything outside of this directory is exclusive to the container.

If you are getting an error that the notebooks are read-only or that you don't have permission to edit files in the "work" directory, make a backup of the repository locally, then open a terminal in Jupyter and run these commands:

```bash
cd ~/work

# Please be careful when using the -R flag, always make a backup!
sudo chgrp -R $(id -g) .
sudo chmod -R g=u .
sudo chmod ug+s .
```
