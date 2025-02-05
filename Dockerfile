FROM tensorflow/tensorflow:2.11.1

RUN pip install numpy pandas matplotlib scikit-learn jupyter notebook && mkdir /.local && chmod 777 /.local

EXPOSE 8888

VOLUME /opt:/opt

CMD ["/bin/bash"]
