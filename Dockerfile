FROM tensorflow/tensorflow:1.11.0-gpu-py3
ENV LANG C.UTF-8
WORKDIR /home
RUN apt-get update
RUN apt-get install python3-pip libsm6 libxrender1 libxext-dev gcc -y
RUN apt-get install zip git vim wget -y
EXPOSE 9000
ADD requirements.txt ./
RUN pip3 install -r requirements.txt    ##-i https://pypi.mirrors.ustc.edu.cn/simple/
