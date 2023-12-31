FROM python:3.10
ENV PYTHONUNBUFFERED 1
ENV DEBUG False
COPY requirements.txt /code/requirements.txt
WORKDIR /code
RUN pip install -r requirements.txt
ADD . .
CMD [ "gunicorn", "--bind", "0.0.0.0", "-p", "8000",  "happy_nation_games.wsgi" ]