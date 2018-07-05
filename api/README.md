# Backend REST API
This is the source code snd Dockerfile holder directory of the Python (Flask) REST API demo application for the backend.

## Without Docker
To use this project out of the Docker container use the following instructions.
 
### Pre-install
You must have:
- Python3 and pip3
- virtualenv (Can be installed with: pip3 install virtualenv)

### To run it, use:
- cd app-sample
- pip3 install --upgrade pip
- python3 -m venv .venv
- source .venv/bin/activate
- pip3 install --upgrade pip
- pip3 install -r requirements.txt
- python3 api/api.py

### With Docker
Just build the image using the Dockerfile and run it.
```
docker build -t my-api:1.0 .
docker run -d -p 8090:8090 --name my-running-api my-api:1.0
```
