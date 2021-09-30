FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y python3 pip git
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

#Expose the required port
EXPOSE 5000

COPY . .

CMD [ "python3", "./web/__init__.py" ]
