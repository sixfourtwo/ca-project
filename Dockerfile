# BASE LAYER
FROM ubuntu:latest

# COPIED REQUIREMENTS
ADD . /usr/src/app/

# INSTALL NEEDED PROGRAMS
RUN apt-get update && apt-get install -y \
 python-pip

# INSTALL REQUIREMENTS
RUN pip install requests && pip install --no-cache-dir -r /usr/src/app/requirements.txt

# EXPOSE CORRECT PORT
EXPOSE 5000

# RUN PROGRAM
CMD ["python", "/usr/src/app/run.py"]
