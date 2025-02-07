FROM tensorflow/tensorflow:2.11.1

RUN pip install numpy pandas matplotlib scikit-learn seaborn jupyter notebook pyright python-language-server python-lsp-server && mkdir /.local && chmod 777 /.local && mkdir /.cache && chmod 777 /.cache

EXPOSE 8888

VOLUME /opt:/opt

CMD ["/bin/bash"]
