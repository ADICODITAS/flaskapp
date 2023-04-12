FROM python:3.12-rc-bullseye

COPY . app/

WORKDIR /app

RUN pip install flask
RUN pip3 install -r requirements.txt

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]