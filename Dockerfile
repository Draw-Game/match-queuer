FROM python:3.10-alpine
WORKDIR /code
COPY * /code/
RUN python3 -m venv venv
RUN venv/bin/pip install -r /code/requirements.txt
CMD ["venv/bin/python3", "/code/main.py"]
