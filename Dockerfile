FROM python:3

WORKDIR /code

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 80

RUN ["chmod", "+x", "/code/docker-entrypoint.sh"]

CMD ./docker-entrypoint.sh