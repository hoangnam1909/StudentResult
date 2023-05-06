# StudentResult

Student Result Management System

[![Python Version](https://img.shields.io/badge/Python-3.11-green.svg)](https://python.org)
[![Django Version](https://img.shields.io/badge/Django-4.1.7-green.svg)](https://djangoproject.com)

## Running the Project Locally

First, clone the repository to your local machine:
```bash
git clone https://github.com/hoangnam1909/StudentResult.git
```

Create a virtual machine:  
```bash
virtualenv venv  
source venv/bin/activate
```

Install the requirements:
```bash
pip install -r requirments.txt
```

Apply the migrations:
```bash
python manage.py makemigrations
python manage.py migrate
```

Finally, run the development server:
```bash
python manage.py runserver
```

The project will be available at **127.0.0.1:8000**.

## Pythonanywhere
Link: [Student Result Management](https://hoangnam1909.pythonanywhere.com/).
