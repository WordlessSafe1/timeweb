# TimeWeb
A project for CMSC190 - DevOps

## Building the docker container
```sh
docker build -t timeweb .
```

## Pulling the docker container from DockerHub
docker pull wordlesssafe1/timeweb


## Running the docker container
First, make a `.env` file and fill out all environment variables you will want.  
Recommended variables:
| Variable     | Description          |
|--------------|----------------------|
| GITHUB_USER  | GitHub Username      |
| GITHUB_EMAIL | GitHub Email Address |
| GITHUB_TOKEN | GitHub PAT           |
IE:
```
GITHUB_USER=<YOUR_GITHUB_USERNAME>
GITHUB_EMAIL=<YOUR_EMAIL_ADDRESS>
GITHUB_TOKEN=<YOUR_GITHUB_PAT>
```

```sh
docker run -it --rm --env-file .env timeweb
```

## Running the program
```sh
cd timeweb
. env/scripts/activate
flask run
```
