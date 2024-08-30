FROM python:3.12.5-alpine3.20
#RUN mkdir -p /app
WORKDIR /code
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
#RUN pip install "fastapi[standard]"
#COPY ./app /code/app
#CMD ["fastapi", "run", "app/main.py", "--port", "8080"]
EXPOSE 8000
#CMD ["fastapi", "dev", "app/main.py", "--port", "8000"]
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]