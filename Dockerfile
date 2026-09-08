FROM python:3.13-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

ENV NEXT_SCENE_SHOW=0
EXPOSE 8080

CMD ["python", "main.py"]
