FROM nvcr.io/nvidia/cuda:11.1.1-devel-ubuntu20.04

# sudo ln -s /usr/lib/wsl/lib/libcuda.so.1 /usr/local/cuda/lib64/libcuda.so
RUN apt-get update && \
    apt-get install -y \
    libgles2-mesa-dev \
    # Tem Pronpt seq 2,135
    libboost-all-dev \
    libomp-dev \
    python-opengl \ 
    libeigen3-dev \
    cmake \
    git \
    libopencv-dev \
    python3-opencv \
    wget && \
    wget https://repo.anaconda.com/archive/Anaconda3-2022.05-Linux-x86_64.sh && \
    sha256sum Miniconda3-latest-Linux-x86_64.sh

# Tem Pronpt
RUN bash Miniconda3-latest-Linux-x86_64.sh  

# apt-get install wget
RUN conda env create -f environment.yml &&
#RUN conda activate egocentric
#RUN pip3 install torch==1.9.0+cu111 torchvision==0.10.0+cu111 torchaudio==0.9.0 -f https://download.pytorch.org/whl/torch_stable.html
