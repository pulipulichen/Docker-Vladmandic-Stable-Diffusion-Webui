#Specify the version of nodejs.
FROM python:3.9.16-bullseye

#Install required packages in os(It is recommended to write it as a spell)
RUN apt-get update && apt-get install -y \
    #Because non-root users use root privileges
    sudo \
    #Get tools from internet
    wget \
    vim \
    apt-utils \
    p7zip-full \
    nano \
    curl \
    git

CMD ["/automatic/webui.py"]