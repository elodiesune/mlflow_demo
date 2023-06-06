FROM python

COPY secrets.sh secrets.sh
RUN ./secrets.sh
RUN rm secrets.sh

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt