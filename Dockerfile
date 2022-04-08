FROM python:3.8

ADD ./mysite /mysite
WORKDIR /mysite

COPY requirements.txt ./

RUN pip install -r requirements.txt --no-cache-dir

EXPOSE 8000

# CMD [ "/usr/bin/python", "manage.py", "runserver", "0.0.0.0:8000". "--settings=mysite.settings.prod" ]
CMD [ "./manage.py", "runserver", "0.0.0.0:8000" ]