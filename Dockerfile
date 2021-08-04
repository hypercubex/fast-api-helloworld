FROM python:3.9-alpine

WORKDIR /srv

RUN pip3 install fastapi uvicorn

COPY . .

#TODO: add build-args
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]