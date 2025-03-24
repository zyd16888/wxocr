FROM python:3.12

RUN pip install flask

COPY libwcocr.so /app/libwcocr.so

COPY wcocr.cpython-312-x86_64-linux-gnu.so /app/wcocr.cpython-312-x86_64-linux-gnu.so

COPY wx /app/wx

COPY main.py /app/main.py

CMD ["python", "/app/main.py"]