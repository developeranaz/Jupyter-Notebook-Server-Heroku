#!/bin/bash

/usr/local/bin/jupyter notebook --config=./conf/jupyter.py

docker run --env PORT=8888 -it -p 8888:8888 jupyter notebook --no-browser
