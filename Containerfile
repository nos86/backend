FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN backend create-db
RUN backend populate-db
RUN backend add-user -u admin -p admin
EXPOSE 5000
CMD ["backend", "run"]
