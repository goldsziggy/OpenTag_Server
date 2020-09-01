FROM python:3.7-alpine3.12

WORKDIR /app

COPY requirements.txt ./

RUN pip3 install --upgrade pip && pip3 install -r requirements.txt

COPY OpenTag_Server.py ./

ENTRYPOINT [ "python", "OpenTag_Server.py" ]