FROM sphinxdoc/sphinx

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"

ADD Pipfile /Pipfile
ADD Pipfile.lock /Pipfile.lock
ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

RUN pip install pipenv && pipenv install --system --deploy --ignore-pipfile

ENTRYPOINT ["pipenv", "run", "python", "/entrypoint.py"]
