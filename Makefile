install: 
		pip install --upgrade pip&&\
		pip install -r requirements.txt

test:
		python -m pytest -s -vv test_hello.py

format:
		black *.py

lint:
		pylint --disable=R,C hello.py
		#flake8 *.py

all: install lint test format