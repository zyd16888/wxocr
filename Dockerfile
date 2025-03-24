FROM python:3.12-slim

WORKDIR /app

RUN pip install --no-cache-dir flask

COPY libwcocr.so wcocr.cpython-312-x86_64-linux-gnu.so ./
COPY wx ./wx
COPY main.py .

CMD ["python", "main.py"]