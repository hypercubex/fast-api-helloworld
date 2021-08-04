FROM python:3.9
RUN pip3 install fastapi uvicorn
COPY . /app
#TODO: add build-args
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]