FROM ubuntu
RUN apt update -y && apt install -y python3 python3-pip
RUN mkdir /app
COPY main.py /app
CMD ["python3","main.py"]
#docker build -t pythonapp -f python.dockerfile .
