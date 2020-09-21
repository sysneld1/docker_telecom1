FROM python:3.7.8
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
COPY requirements.txt /code/
RUN pip install -r /code/requirements.txt
COPY . /code/
RUN git clone https://github.com/sysneld1/telecom1.git
WORKDIR /telecom1
COPY start.sh /telecom1/start.sh
RUN cd /telecom1
RUN chmod 0777 /telecom1/start.sh
CMD ["/telecom1/start.sh"]


