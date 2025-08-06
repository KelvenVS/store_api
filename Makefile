run:
	@uvicorn store.main:app --reload

run-docker:
	@docker-compose up -d

down-docker:
	@docker stop $(shell docker ps -q)

precommit-install:
	@poetry run pre-commit install

test:
	@poetry run pytest

test-matching:
	@poetry run pytest -s -rx -k $(K) --pdb store ./tests/
