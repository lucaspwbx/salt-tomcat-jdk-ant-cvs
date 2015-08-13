sudo apt-get update && sudo apt-get upgrade -y
sudo add-apt-repository ppa:saltstack/salt -y
sudo apt-get update && sudo apt-get install salt-minion -y
sudo sed -i "s/#file_client:\ remote/file_client:\ local/" /etc/salt/minion
