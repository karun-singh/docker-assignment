FROM python:3.12.0b4-alpine
WORKDIR /app
COPY src/requirements.txt .
RUN pip3 install -r requirements.txt
COPY src /app/src
RUN ls
RUN echo "Hello"
CMD [ "python3","src/assignment.py" ]