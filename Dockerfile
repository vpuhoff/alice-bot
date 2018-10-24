FROM python:3.6:alpine


WORKDIR /app
COPY . /app

EXPOSE 5000

#RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt
#CMD FLASK_APP=api.py flask run --host="::"
CMD FLASK_APP=hello.py flask run --host="::" --with-threads
