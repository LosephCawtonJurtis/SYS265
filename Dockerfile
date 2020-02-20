FROM python:3

# set a directory for the app
WORKDIR /usr/src/app

# copy all the files to the container
COPY . .

# install dependencies I had to create my own requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# tell the port number the container should expose
EXPOSE 5000

# run the command I had to change this to run my program instead of the tutorial's
CMD ["python", "./rickroll.py"]
