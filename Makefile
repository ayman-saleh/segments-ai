.PHONY : docs
docs :
	rm -rf docs/build/
	sphinx-autobuild -b html --watch src/segments/ docs/source/ docs/build/

.PHONY : checks
checks :
	isort --check .
	black --check .
	# flynt --check .
	# flake8 .
	mypy .
	python -m unittest

.PHONY : format
format :
	isort .
	black .
	flynt .
	flake8 .