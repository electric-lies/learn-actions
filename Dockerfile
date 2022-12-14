FROM python:3.10-slim-bullseye


RUN mkdir /code
ADD . /code
WORKDIR /code

RUN pip install -vr req.txt

EXPOSE 5000

CMD ["python","main.py"]