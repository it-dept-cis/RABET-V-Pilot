#!/bin/bash
pipenv install --system --deploy --ignore-pipfile
pipenv run python entrypoint.py
