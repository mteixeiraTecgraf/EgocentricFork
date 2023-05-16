
### 
### sudo apt-get install libgles2-mesa-dev
### sudo apt-get install libboost-all-dev
### sudo apt install libomp-dev
### sudo apt-get install python-opengl
### sudo apt-get install libeigen3-dev


# conda env create -f environment.yml
conda activate egocentric
pip3 install torch==1.9.0+cu111 torchvision==0.10.0+cu111 torchaudio==0.9.0 -f https://download.pytorch.org/whl/torch_stable.html
pip install scipy
pip install sklearn

export CUDA_HOME=/usr/local/cuda-11.1
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$CUDA_HOME/lib64:$CUDA_HOME/extras/CUPTI/lib64
export LD_LIBRARY_PATH=/usr/local/nvidia/lib:/usr/local/nvidia/lib64:$CUDA_HOME/lib64:$CUDA_HOME/extras/CUPTI/lib64
export PATH=$PATH:$CUDA_HOME/bin
export PATH=$PATH:/root/anaconda3/envs/egocentric/bin:/root/anaconda3/condabin:/usr/local/nvidia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/bin:$CUDA_HOME/bin
export PATH=/root/anaconda3/envs/egocentric/bin:/root/anaconda3/condabin:/usr/local/nvidia/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/bin:/usr/local/cuda-11.1/bin

export MESA_GL_VERSION_OVERRIDE=3.3

sh setup.sh

python main.py --config demo/config/demo.json