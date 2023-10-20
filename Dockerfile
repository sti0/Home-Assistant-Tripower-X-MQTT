FROM python:3.10-alpine

WORKDIR /sma
COPY requirements.txt speedwiredecoder.py sma2mqtt.py ./

RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "sma2mqtt.py" ]