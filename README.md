To get started, make sure you have Docker and Docker Compose installed on your system. You can find instructions on how to install these tools here:

- Docker: https://docs.docker.com/get-docker/
- Docker Compose: https://docs.docker.com/compose/install/
Once you have these tools installed, you can follow the steps below to build and run the application:


1. Clone the repository to your local machine:

```bash
git clone https://github.com/amirtds/web-diagnostic -b dockerized
cd web-diagnostic
```

2. create a .env file in the root directory of the project and add the following environment variables:

```env
DEBUG=1
SECRET_KEY=foo
DJANGO_ALLOWED_HOSTS=localhost 127.0.0.1 [::1]
SQL_ENGINE=django.db.backends.postgresql
SQL_DATABASE=hello_django_dev
SQL_USER=hello_django
SQL_PASSWORD=hello_django
SQL_HOST=db
SQL_PORT=5432
```

3. Build the docker images and run the containers:

```bash
docker-compose up -d
```

4. Open your browser and navigate to http://localhost:8000