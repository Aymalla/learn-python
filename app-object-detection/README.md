# Image Object Detection

This is a simple application that demonstrates use python to create an object detection application that detects objects in an Image using the `TensorFlow`, `Keras` and `OpenCV` libraries.

## Running the Application

1- Download the model from the following link and place it in the `app-object-detection` directory:

```bash
# The model not included in the repository due to its size and github's file size limit
curl -OL https://github.com/OlafenwaMoses/ImageAI/releases/download/3.0.0-pretrained/retinanet_resnet50_fpn_coco-eeacb38b.pth
```


2- To run the application, you can use: [`main.ipynb`](main.ipynb) or `make commands` or run the commands in your terminal.

Using the `make commands` for shortcut:

```bash

# Init the application and install the required packages
make init

# Run the application
make run

# clean up the application environment
make clean

```

or run the shell commands in your terminal to run the application:

```bash

# Dependency for opencv-python (cv2). `import cv2` raises ImportError: libGL.so.1: cannot open shared object file: No such file or directory
# Solution from https://askubuntu.com/a/1015744
sudo apt install -y libgl1-mesa-glx

# navigate to the app-object-detection directory
cd app-object-detection

# create a virtual environment
python -m venv .venv

# activate the virtual environment
source .venv/bin/activate  

# install the required packages
pip install -r requirements.txt

# run the application
python main.py

```
