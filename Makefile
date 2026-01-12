install:
	pip install --upgrade pip && pip install -r requirements.txt

lint:
	pylint --disable=R,C hello.py

test:
	pytest -vv --cov=hello test_hello.py

all: install lint test
