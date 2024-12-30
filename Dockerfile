FROM ubuntu:latest

WORKDIR /app

COPY . .

RUN chmod +x deps.sh && ./deps.sh

RUN chmod +x compile_all.py

CMD ["python3", "compile_all.py", "compile"]
