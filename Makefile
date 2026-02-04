.PHONY: deps lint test run

deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt

lint:
	PYTHONPATH=. flake8 hello_world test

test:
	PYTHONPATH=. pytest

run:
	python main.py