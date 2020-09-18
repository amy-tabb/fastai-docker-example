FROM fastdotai/fastai:latest

RUN useradd fastai-user 

RUN apt-get -y install nano

WORKDIR /home/fastai-user/

RUN cp ../../workspace/run_jupyter.sh /home/run_jupyter.sh

USER fastai-user

ENV HOME "/home/fastai-user"
