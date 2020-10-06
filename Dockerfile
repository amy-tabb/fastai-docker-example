FROM fastdotai/fastai:2020-10-02

RUN useradd fastai-user 

RUN apt-get update 

RUN apt-get -y install nano\
   graphviz \
   libwebp-dev

RUN pip uninstall -y pillow

RUN pip install pillow 
    
RUN pip install kaggle \
    dtreeviz \
    treeinterpreter

RUN pip install waterfallcharts

WORKDIR /home/

RUN echo '#!/bin/bash\njupyter notebook --ip=0.0.0.0 --no-browser' >> run_jupyter.sh

WORKDIR /home/fastai-user/

USER fastai-user

ENV HOME "/home/fastai-user"
