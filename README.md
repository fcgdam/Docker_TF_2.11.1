# Docker container for Tensorflow 2.11.1

This Dockerfile creates a docker image with Tensorflow version 2.11.1 that is compatible with at least ST Microelectronics X-CUBE-AI version 10.

If a model is created with a higher version of Tensorflow, X-Cube-AI, as of now, might fail to convert the model to be used on the microprocessor.

The created docker image also has some standard ML libraries, such as Numpy, Pandas and SciKit learn and the Jupyter Notebook server so development can be done using the image.

# How to use it?

Create the image by running **./build.sh**. If some other libraries are required, modify the pip install command on the Dockerfile as required.

Create a running container by running the **./run.sh** script.

Modify this script to map at least the host volume where your files (Jupyter notebooks reside) to the container **/opt** directory.
At the moment, the /opt host volume is mapped to the internal /opt volume.

Check the running container IP by running the **./getip.sh** script.

Attach to the container by running the **./attach.sh** script.

At the prompt docker container bash prompt, run the following command: **jupyter notebook --ip 0.0.0.0**

Using the previous found IP, and the outputed token/url of the starting log of the jupyter notebook, use a browser to access it.

For example: **http://172.17.0.12:8888/tree?token=a3fb1692994fc26a29466691a18159879604ced685196c6b** where the IP address 172.17.0.12 is the containers IP address.

# How to use GPU or other version

From available Tensorflow docker images, choose the one with the required version and having the GPU libraries enabled. Check out https://hub.docker.com/r/tensorflow/tensorflow
