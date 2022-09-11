FROM python:3.10-slim-bullseye

RUN pip install -vr req.txt

RUN mkdir /code
ADD main.py /code
WORKDIR /code

EXPOSE 5000

CMD ["python","main.py"]