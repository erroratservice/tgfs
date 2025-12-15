FROM python:3.12
WORKDIR /app
COPY . .
RUN uv venv --system-site-packages
COPY requirements.txt .
RUN uv pip install --no-cache-dir -r requirements.txt
CMD ["/bin/sh", "start.sh"]
