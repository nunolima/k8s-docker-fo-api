FROM python:3.6
MAINTAINER NunoLima

RUN mkdir /api

WORKDIR /api

COPY . /api
RUN pip install --no-cache-dir -r requirements.txt

ENV APP_ENV development

EXPOSE 8090

CMD ["python", "api.py"]

