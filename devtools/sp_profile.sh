sp="/raid/tools/SP/SystemProfiler-linux-public-4.0.1163-b6fa40c/Target-x86_64/x86_64/sp"
cmd="python main.py"
cd ..
rm -fr ./*.qdstrm
$sp profile --delay=40 --duration=10 -o CapsNet-Tensorflow.qdstrm -t cuda,cublas,curand,system,cudnn $cmd
mv CapsNet-Tensorflow.qdstrm ./devtools
