
# Update package list
sudo apt update

# Dependency for opencv-python (cv2). `import cv2` raises ImportError: libGL.so.1: cannot open shared object file: No such file or directory
# Solution from https://askubuntu.com/a/1015744
sudo apt install -y libgl1-mesa-glx

# Upgrade pip
pip install --upgrade pip