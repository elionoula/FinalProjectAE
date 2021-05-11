FROM python:3.8

EXPOSE 5000

WORKDIR /pythonlogin

COPY requirements.txt /pythonlogin
RUN pip install  -r requirements.txt --upgrade pip
RUN pip install --upgrade google-api-python-client google-auth-httplib2 google-auth-oauthlib

COPY . /pythonlogin

CMD python app.py