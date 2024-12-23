FROM python:3.11

COPY . .

# Обновляем пакеты и устанавливаем LibreOffice
RUN apt-get update && apt-get install -y libreoffice

# Устанавливаем зависимости Python
RUN pip install -r req.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]