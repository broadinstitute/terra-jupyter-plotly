FROM us.gcr.io/broad-dsp-gcr-public/terra-jupyter-python:0.0.23
RUN pip3 -V \
 && pip3 install dash==1.19.0 \
 && pip3 install plotly==4.14.3
