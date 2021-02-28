FROM us.gcr.io/broad-dsp-gcr-public/terra-jupyter-python:0.0.23

COPY requirements.txt .

USER root
ENV PIP_USER=false
RUN pip3 -V \
 && pip3 install --upgrade -r requirements.txt

ENV USER jupyter-user
USER $USER
ENV PIP_USER=true

ENTRYPOINT ["/usr/local/bin/jupyter", "notebook"]
