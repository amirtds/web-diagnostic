FROM python:3.11.1-alpine

# set the working directory to the root of the project
WORKDIR /app

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# copy the requirements file to the image
COPY requirements.txt .

# install the required dependencies
RUN pip install -r requirements.txt

# copy the rest of the project files to the image
COPY . .

# run the Django migrations
RUN python manage.py migrate

# collect the static files
RUN python manage.py collectstatic --noinput

# expose the port that the Django application will run on
EXPOSE 8000

# run the Django development server when the container starts
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
