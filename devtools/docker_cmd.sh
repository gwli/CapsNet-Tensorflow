tag=nvdevtools/tensorflow:pip-cuda-8.0

nvidia-docker run --privileged=true  -e DISPLAY  --net=host --ipc=host -it --rm \
     -v $HOME/.Xautority:/home/nvidia/.Xautoority \
     -v /raid/dl_samples:/raid/samples \
     -v /raid/tools:/raid/tools \
     -w `pwd`  \
     $tag /bin/bash

