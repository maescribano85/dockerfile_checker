FROM python:2.7

RUN pip install pyyaml

COPY ./dockerfile_checker /opt/dockerfile_checker
RUN ln -s /opt/dockerfile_checker/check_dockerfile.py /usr/bin/check_dockerfile

WORKDIR /root/
CMD ["/bin/bash"]
