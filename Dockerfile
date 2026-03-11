# Layer 1
FROM python:3.11-slim

# Prevent Python from writing .pyc files
# Layer 2
ENV PYTHONDONTWRITEBYTECODE=1

# Ensure logs print directly
# Layer 3
ENV PYTHONUNBUFFERED=1

# Layer 4
WORKDIR /app

# Layer 5
COPY requirements.txt .

# Layer 6
RUN pip install --no-cache-dir -r requirements.txt

# Layer 7
COPY app.py .

# Layer 8
EXPOSE 5000

# Layer 9

CMD ["python", "app.py"]