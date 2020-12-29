FROM python:3-alpine
WORKDIR /service
COPY pip.conf /etc/pip.conf
COPY requirements.txt .
RUN pip config list -v
RUN pip install -r requirements.txt
COPY . ./
EXPOSE 8080
ENTRYPOINT ["python3", "app.py"]
