FROM pytorch/pytorch:1.3-cuda10.1-cudnn7-devel

WORKDIR /workspace

RUN apt-get update && apt-get install -y libglib2.0-0 libsm6 libxrender1 libxext6

COPY requirements_dev.txt ./
RUN pip install --no-cache-dir cython==0.29.15 -i https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install --no-cache-dir -r requirements_dev.txt -i https://pypi.tuna.tsinghua.edu.cn/simple

