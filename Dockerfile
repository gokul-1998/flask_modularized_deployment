FROM python:3.8-slim-buster
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
ENV FLASK_APP=application
ENV FLASK_ENVIRNAMENT=dev
# CMD gunicorn -b 0.0.0.0:5000 'application:create_app()'
CMD ["gunicorn", "-b", "0.0.0.0:5000", "application:create_app()"]