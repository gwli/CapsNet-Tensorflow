cd .. 
mkdir -p data/mnist
wget -c -P data/mnist http://yann.lecun.com/exdb/mnist/{train-images-idx3-ubyte.gz,train-labels-idx1-ubyte.gz,t10k-images-idx3-ubyte.gz,t10k-labels-idx1-ubyte.gz}
cd ../.. 
gunzip data/mnist/*.gz

docker pull victorgwli/nvdevtools:tensorflow-cuda-8.0

nvidia-docker run --privileged -it -e DISPLAY -v $HOME/.Xautority:/home/nvidia/.Xautoority --net=host  -v `pwd`/..:/home/nvidia/Samples/Capsnet victorgwli/nvdevtools:tensorflow-cuda-8.0 /bin/bash
