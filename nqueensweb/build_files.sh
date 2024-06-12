echo "BUILD START"


# python3.9 -m venv venv
# source venv/bin/activate

python3 -m venv virtualenv
source virtualenv/bin/activate
pip install django 

# install all deps in the venv
pip install -r requirements.txt

# collect static files using the Python interpreter from venv
python manage.py collectstatic --noinput

echo "BUILD END"

# [optional] Start the application here 
# python manage.py runserver