FROM python:3.10-alpine
WORKDIR /code
RUN python3 -m venv venv
RUN venv/bin/pip install -r /code/service-entrypoint/requirements.txt
CMD ["venv/bin/python3", "/code/service-entrypoint/main.py"]
