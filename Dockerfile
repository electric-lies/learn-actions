FROM python:3.10-slim-bullseye

# RUN apt-get update 
# RUN apt-get -y install python3-pip
RUN pip install flask

RUN mkdir /code
ADD main.py /code
WORKDIR /code

EXPOSE 5000

CMD ["python","main.py"]