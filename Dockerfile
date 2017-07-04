FROM sequenceiq/spark:1.6.0
MAINTAINER James Barney

RUN mkdir /app
WORKDIR /app

RUN yum install -y wget python-pip; yum clean all

RUN pip install pytest

RUN wget --no-check-certificate -O master.zip https://github.com/Barneyjm/pyspark_testing/archive/master.zip
RUN unzip master.zip

CMD ["pytest", "/app"]