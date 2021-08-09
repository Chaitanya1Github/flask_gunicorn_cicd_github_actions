FROM python:3.8-slim-buster


COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY application ./application
WORKDIR /application
#RUN apt-get update
#RUN apt install -y nginx
#RUN rm /etc/nginx/conf.d/default.conf
#COPY nginx.conf /etc/nginx/conf.d/nginx.conf
#EXPOSE 5000
#CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
#CMD ["gunicorn"  , "--bind", "0.0.0.0:5000", "wsgi:app"]

# run with gunicorn in heroku
CMD gunicorn --bind 0.0.0.0:$PORT wsgi
#ENTRYPOINT ["python3", "app.py"]