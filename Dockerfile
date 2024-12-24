FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt ./
COPY app.py ./
COPY model.py ./

RUN pip install --no-cache-dir -r requirements.txt

COPY model.pkl ./

EXPOSE 5000

CMD ["python", "app.py"]
