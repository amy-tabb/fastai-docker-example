FROM pytorch/pytorch:1.6.0-cuda10.1-cudnn7-runtime

ARG BUILD=dev

RUN apt-get update && apt-get install -y software-properties-common rsync

RUN add-apt-repository -y ppa:git-core/ppa && apt-get update && apt-get install -y git libglib2.0-dev && apt-get update

RUN apt-get -y install nano\
   graphviz \
   libwebp-dev

RUN pip install albumentations \
    catalyst \
    captum \
    "fastprogress>=0.1.22" \
    graphviz \
    jupyter \
    kornia \
    matplotlib \
    nbdev \
    neptune-cli \
    opencv-python \
    pandas \
    pillow \
    pyarrow \
    pydicom \
    pyyaml \
    scikit-learn \
    scikit-image \
    scipy \
    "sentencepiece<0.1.90" \
    spacy \
    tensorboard \
    wandb \
    kaggle \
    dtreeviz \
    treeinterpreter \
    waterfallcharts

RUN git clone https://github.com/fastai/fastai.git --depth 1  && git clone https://github.com/fastai/fastcore.git --depth 1

RUN /bin/bash -c "if [[ $BUILD == 'dev' ]] ; then echo \"Development Build\" && cd fastai && pip install -e \".[dev]\" && cd ../fastcore && pip install -e \".[dev]\"; fi"

COPY download_testdata.py ./
COPY extract.sh ./
RUN chmod u+x extract.sh

RUN useradd fastai-user  

WORKDIR /home/

RUN echo '#!/bin/bash\njupyter notebook --ip=0.0.0.0 --no-browser' >> run_jupyter.sh

WORKDIR /home/fastai-user/

USER fastai-user

ENV HOME "/home/fastai-user"
