FROM fastdotai/fastai:latest

RUN useradd fastai-user 

RUN apt-get -y install nano

WORKDIR /home/fastai-user/

RUN mkdir .fastai

RUN echo -e "archive_path: /home/fastai-user/.fastai/archive\ndata_path: /home/fastai-user/.fastai/data\nmodel_path: /home/fastai-user/.fastai/models\nstorage_path: /tmp\nversion: 2\n" >> .fastai/config.yml

RUN cp ../../workspace/run_jupyter.sh /home/run_jupyter.sh

USER fastai-user

ENV HOME "/home/fastai-user"
