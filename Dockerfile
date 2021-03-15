FROM python:3

WORKDIR /code

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN ["chmod", "+x", "/code/docker-entrypoint.sh"]

CMD ./docker-entrypoint.sh