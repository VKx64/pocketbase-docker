# Use a lightweight base image
FROM alpine:latest

# Set the PocketBase version you want to use
ARG PB_VERSION=0.18.1

# Install dependencies:
RUN apk add --no-cache \
    unzip \
    ca-certificates \
    wget

# Download the specified PocketBase version for Linux AMD64
ADD https://github.com/pocketbase/pocketbase/releases/download/v${PB_VERSION}/pocketbase_${PB_VERSION}_linux_amd64.zip /tmp/pb.zip

# Unzip PocketBase into the /pb/ directory and remove the zip file
RUN unzip /tmp/pb.zip -d /pb/ && rm /tmp/pb.zip

# Declare the directory where PocketBase stores its data as a volume
VOLUME /pb/pb_data

# Expose the PocketBase port
EXPOSE 8080

# The command to run when the container starts:
CMD ["/pb/pocketbase", "serve", "--http=0.0.0.0:8080"]