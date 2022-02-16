FROM python:3.8.9
ENV PYTHONUNBUFFERED 1

WORKDIR /src
COPY src/ .
RUN chmod +x ./*
RUN pip install -r requirements.txt
RUN python manage.py collectstatic --no-input

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]