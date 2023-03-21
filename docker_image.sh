# Create the container
docker run -it ubuntu
# Update Packaging tool - APT
apt-get update
# Install some properties
apt-get install software-properties-common add-apt-repository ppa:deadsnakes/ppa
# Update Packaging tool for verifying everything is in order
apt-get update
# Install Python Version you will use
apt-get install python3.9
# Install pip
apt-get install python3-pip
# Install environments generator of Python
apt install python3.9-venv
# Create environment for install specific library of openai
python3.9 -m venv openai_venv
# Activate Python environment
source openai_venv/bin/activate
# Create a folder for saving libraries to install
mkdir python
# Install openai library in python folder
pip install openai -t python
# install zip method
apt-get install zip
# saving python folder as a zip
zip -r openai.zip python
# Exit from docker container
exit
# Copy zip file to local PATH
docker cp [CONTAINER-ID]:./openai.zip [LOCAL-PATH]