FROM sequenceiq/spark:1.6.0
MAINTAINER James Barney

RUN yum install -y wget python-pip 

RUN pip install pytest

RUN git clone git@github.com:Barneyjm/pyspark_testing.git /app

CMD ["pytest", "/app"]