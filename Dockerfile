# syntax=docker/dockerfile:1
FROM nvcr.io/nvidia/pytorch:21.05-py3
RUN apt-get update && apt-get install -y libsndfile1 ffmpeg
RUN pip install Cython
RUN python -m pip install git+https://github.com/NVIDIA/NeMo.git@r1.0.2#egg=nemo_toolkit[all]

