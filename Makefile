setup:
	python3 -m venv env
	. env/bin/activate
	pip3 install -r requirements.txt

clean:
	rm -rf env/ __pycache__/

test:
	python3 -m pytest

run:
	flask run
	

.PHONY: setup clean test run
