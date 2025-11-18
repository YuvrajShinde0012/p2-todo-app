FROM python=3.2
RUN pip install django==3.2

COPY . .
RUN python manage.py migrate
EXPOSE 8000
CMD	["PYTHON","MANAGE.PY","RUNSERVER","0.0.0.0:8000"]


