FROM nginx:latest

ARG USER_NAME

# Create the directory with permissions 777
RUN mkdir -m 777 /structure

# Create the files inside the directory
USER root
RUN touch /structure/sync-work
RUN touch /structure/nobody-work

#Create the user collin with UID 5000
RUN useradd -u 5000 -ms /bin/bash $USER_NAME
USER $USER_NAME

