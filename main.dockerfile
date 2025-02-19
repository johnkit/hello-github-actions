FROM python:3.12-slim

# Get the version
RUN IMAGE_VERSION=$(cat main.version.txt | xargs)
ENV IMAGE_VERSION=$IMAGE_VERSION

RUN pip install numpy==${IMAGE_VERSION}

CMD ["/bin/bash", "-l"]
