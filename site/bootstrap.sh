# Install Ansible on new Ubuntu VM
sudo apt update
sudo apt-get install -y build-essential git python3-pip
pip3 install --user ansible
pip3 install google-auth requests

# Reset the PATH
source .profile

# Verify installed
ansible --version
