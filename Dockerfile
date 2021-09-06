FROM jupyter/datascience-notebook

RUN mkdir /pandas-cookbook
WORKDIR /pandas-cookbook
ADD . /pandas-cookbook
RUN pip install -r requirements.txt

WORKDIR /pandas-cookbook/cookbook/

EXPOSE 4202:8888/tcp

CMD ['jupyter', 'notebook', 'tianjun223.']
