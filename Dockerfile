FROM python:latest

COPY ./requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -q -r /tmp/requirements.txt

ENV PORT=5000
EXPOSE $PORT

WORKDIR /usr/src
COPY ./ ./

CMD ["python","app.py"]

