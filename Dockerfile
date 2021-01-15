# Get image
FROM ubuntu:20.04

# Set container label
LABEL version="v1.0.3" maintainer="luthfi.anandra@gmail.com"

# Add acakin.sh to container and set workdir
RUN mkdir /script
COPY acakin.sh /script
WORKDIR /script

ENTRYPOINT ./acakin.sh