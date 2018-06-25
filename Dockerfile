FROM continuumio/miniconda3

# system installs
RUN apt-get update && apt-get -qy install tmux vim

# python specific
# - ptvsd: debug extension
RUN pip install --no-cache ptvsd==3.0.0

# for python remote debugging
EXPOSE 3000

ADD tmux.conf /root/.tmux.conf
ADD vimrc /root/.vimrc

WORKDIR /work