To get started, follow the steps below:

1. Clone the repository to your local machine:

```bash
git clone https://github.com/amirtds/web-diagnostic -b master
cd web-diagnostic
```

2. Create a new virtual environment and install the required packages:

```env
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

3. Run the Django database migrations:

```bash
python manage.py migrate
```

4. Run the Django application:

```bash
python manage.py runserver
```

The application should now be running on your local machine. You can access it in your web browser at http://localhost:8000/.