Instructions to set up Jupyter in a Docker container:

- Install Docker and docker-compose
- Clone the repository and open a terminal inside the newly-created directory
- Create a file named `.env` with the line `TOKEN=` followed by your DWave token
- Run `docker compose up` to start the container
- Go to `http://127.0.0.1:8888/lab` to access Jupyter

The "work" directory in the container will persist across restarts of the container. You should copy any notebooks to this directory along with your `.env` file. To move files between the container and your local repository, you can use the clipboard, `docker cp`, or `docker volume`.

Try to avoid committing notebooks with outputs or metadata in them, because this will cause merge conflicts if you try to get someone else's changes. Use a tool like [nbstripout](https://github.com/kynan/nbstripout) to remove the unwanted metadata.
