# Basis-Image
FROM python:3.10-slim

# Arbeitsverzeichnis im Container
WORKDIR /app

# Requirements kopieren und installieren
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Projektdateien kopieren
COPY . .

# Standardbefehl
CMD ["python", "app.py"]
