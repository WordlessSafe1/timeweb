FROM ubuntu:latest

# Install necessary software for development
RUN apt-get update && apt-get install -y \
	vim curl git sudo gcc g++ \
	python3 python3-venv python3-pip python3-dev \
	build-essential libffi-dev libc-dev

# Setup a developer user that is not root
RUN useradd -m developer && echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer

# Swith to developer user
USER developer
WORKDIR /home/developer

COPY .profile .profile
RUN echo "\n. .profile\n" >> .bashrc

RUN git clone https://github.com/WordlessSafe1/timeweb

RUN python3 -m venv timeweb/env
RUN timeweb/env/bin/python3 -m pip install -r timeweb/requirements.txt

CMD ["/bin/bash"]


