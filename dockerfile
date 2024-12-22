FROM python:3.11-alpine

COPY . .

RUN pip install -r req.txt

CMD uvicorn main:app --host 0.0.0.0 --port 8000