FROM python:3.8-alpine
ENV PYTHONBUFFERED 1
WORKDIR /djano
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .

# EXPOSE 8000
CMD ["gunicorn", "core.wsgi", "--timeout", "100","--bind", "0.0.0.0:8000"]
