FROM yandex/rep:0.6.6
LABEL maintainer «Liubov Yaronskaya <luba.yaronskaya@gmail.com>"


RUN apt-get install -y libzmq3-dev

RUN conda update ipython-notebook && \
	conda create -n my-r-env -c r r-essentials

RUN R -e "IRkernel::installspec()"

RUN jupyter notebook --no-browser --allow_root --ip 0.0.0.0