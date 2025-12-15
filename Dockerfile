FROM python:3.12
WORKDIR /app
COPY . .
RUN python3 -m venv venv
COPY requirements.txt .
RUN venv/bin/pip install --no-cache-dir -r requirements.txtt
CMD ["/bin/sh", "start.sh"]
