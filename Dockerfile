# Use an official Ubuntu image as the base image
FROM ubuntu

# Set LABEL variables
LABEL name="Ajinkya"

# Set environment variables
ENV AWS_KEY=AFFSGSVGAHA \
    AWS_SECRET=AJJAJAJAJ

# Set Argument variables
ARG T_VERSION="1.1" \
ARG R_VERSION="2.2"

# Install dependencies
RUN apt update -y && apt install -y python3 python3-pip

# Create and set the working directory
WORKDIR /app

# Copy application files from host to container
COPY . /app

# Install Python dependencies
#RUN pip3 install -r requirements.txt

# Expose a port
EXPOSE 8080

# Define the default command to run when the container starts(It will keep container running state)
CMD ["ngixx", "-g","deamon off;"]
